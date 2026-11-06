###### Class com.facebook.ads.redexgen.X.C2813lh (com.facebook.ads.redexgen.X.lh)
.class public final Lcom/facebook/ads/redexgen/X/lh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/Object;

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2920
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TEIgz1GSUxi0w6HxI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "95AkSvnB6didgYS0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lh;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lh;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/lh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A03:Ljava/lang/String;

    .line 2921
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    .line 2922
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2923
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    .line 2924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2925
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    .line 2926
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .registers 6

    .line 101595
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101596
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 101597
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/lA;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/lj;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/lA;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/lj;"
        }
    .end annotation

    .line 101598
    .local p3, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 101599
    :try_start_1
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lT;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/ads/redexgen/X/lT;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 101600
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A09()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/mA;->A01()D

    move-result-wide v2

    .line 101601
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A09()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/mA;->A02()Ljava/lang/String;

    move-result-object v4

    .line 101602
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lT;->A02()Ljava/util/Map;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(DLjava/lang/String;Ljava/util/Map;)V

    move-object v5, v0

    .line 101603
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/lh;->A0C(Lcom/facebook/ads/redexgen/X/lj;Lcom/facebook/ads/redexgen/X/lA;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_24

    .line 101604
    :catch_24
    return-object v5
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/lh;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/lA;)Lorg/json/JSONArray;
    .registers 2

    .line 101605
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/lh;->A04(Lcom/facebook/ads/redexgen/X/lA;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/lA;I)Lorg/json/JSONArray;
    .registers 12

    .line 101606
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 101607
    .local v0, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v9, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    monitor-enter v9

    .line 101608
    const/4 v3, 0x0

    .line 101609
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 101610
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 101611
    :try_start_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v5, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101612
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101613
    .local v5, "debugLogFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 101614
    const/16 v5, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101615
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 101616
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 101617
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 101618
    :cond_46
    :goto_46
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v7, "line":Ljava/lang/String;
    if-eqz v0, :cond_c0

    if-eqz p1, :cond_c0

    .line 101619
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101620
    .local v6, "debugLogEvent":Lorg/json/JSONObject;
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 101621
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101622
    :cond_73
    const/16 v6, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101623
    .local v8, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 101624
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101625
    .local v9, "attempt":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 101626
    const/16 v6, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    .line 101627
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101628
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101629
    :goto_b3
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_bb

    .line 101630
    :cond_b7
    invoke-static {v7, v1}, Lcom/facebook/ads/redexgen/X/lh;->A0E(Ljava/lang/String;I)V

    goto :goto_b3

    .line 101631
    :goto_bb
    if-lez p1, :cond_46

    .line 101632
    add-int/lit8 p1, p1, -0x1

    goto :goto_46

    .line 101633
    .end local v5    # "debugLogFile":Ljava/io/File;
    .end local v7    # "line":Ljava/lang/String;
    :cond_c0
    if-eqz v8, :cond_c5
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_c2} :catch_d8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_c2} :catch_d6
    .catchall {:try_start_b .. :try_end_c2} :catchall_fa

    .line 101634
    :try_start_c2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 101635
    :cond_c5
    if-eqz v4, :cond_ca

    .line 101636
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 101637
    :cond_ca
    if-eqz v3, :cond_f8

    .line 101638
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_f8
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_d0} :catch_d0
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_114

    .line 101639
    :catch_d0
    move-exception v1

    .line 101640
    .local v5, "ex":Ljava/io/IOException;
    :try_start_d1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    goto :goto_f5
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_114

    .line 101641
    :catch_d6
    move-exception v1

    goto :goto_d9

    :catch_d8
    move-exception v1

    .line 101642
    .local v5, "e":Ljava/lang/Exception;
    :goto_d9
    :try_start_d9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101643
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_e5
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_fa

    .line 101644
    :try_start_e2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 101645
    :cond_e5
    if-eqz v4, :cond_ea

    .line 101646
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 101647
    :cond_ea
    if-eqz v3, :cond_f8

    .line 101648
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_f8
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f0} :catch_f0
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_114

    .line 101649
    :catch_f0
    move-exception v1

    .line 101650
    .local v5, "ex":Ljava/io/IOException;
    :try_start_f1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    :goto_f5
    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101651
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_f8
    :goto_f8
    monitor-exit v9

    .line 101652
    return-object v2
    :try_end_fa
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_114

    .line 101653
    :catchall_fa
    move-exception v2

    .line 101654
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4
    if-eqz v8, :cond_100

    .line 101655
    :try_start_fd
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 101656
    :cond_100
    if-eqz v4, :cond_105

    .line 101657
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 101658
    :cond_105
    if-eqz v3, :cond_113

    .line 101659
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_113
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_10b} :catch_10b
    .catchall {:try_start_fd .. :try_end_10b} :catchall_114

    .line 101660
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4
    :catch_10b
    move-exception v1

    .line 101661
    .local v6, "ex":Ljava/io/IOException;
    :try_start_10c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101662
    .end local v0    # "debugLogEvents":Lorg/json/JSONArray;
    .end local p2
    .end local p3
    :cond_113
    :goto_113
    throw v2
    :try_end_114
    .catchall {:try_start_10c .. :try_end_114} :catchall_114

    .line 101663
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4
    :catchall_114
    move-exception v0

    .end local v2
    .end local v3
    .end local v4
    .restart local v0    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local p2
    .restart local p3
    :try_start_115
    monitor-exit v9
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/lj;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101664
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 101665
    .local v0, "reportObject":Lorg/json/JSONObject;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101666
    const/16 v2, 0x196

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A01()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/qS;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x192

    const/4 v1, 0x4

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/qS;->A03(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x163

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101669
    const/16 v2, 0x159

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101670
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A04()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lj;->A04()Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 101671
    :goto_72
    const/16 v2, 0x10b

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101672
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101673
    return-object v4

    .line 101674
    :cond_90
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_72
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x19a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/lh;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x7t
        0x5ft
        0x53t
        0x37t
        0x1t
        0x1ct
        0x3t
        0x30t
        0x1ct
        0x6t
        0x1dt
        0x7t
        0x16t
        0x1t
        0x49t
        0x53t
        0x3ft
        0x1dt
        0x12t
        0x5bt
        0x8t
        0x5ct
        0x18t
        0x19t
        0x10t
        0x19t
        0x8t
        0x19t
        0x5ct
        0x18t
        0x19t
        0x1et
        0x9t
        0x1bt
        0x5ct
        0x19t
        0xat
        0x19t
        0x12t
        0x8t
        0xft
        0x5ct
        0x1at
        0x15t
        0x10t
        0x19t
        0x52t
        0xet
        0x2ct
        0x23t
        0x6at
        0x39t
        0x6dt
        0x29t
        0x28t
        0x21t
        0x28t
        0x39t
        0x28t
        0x6dt
        0x2bt
        0x24t
        0x21t
        0x28t
        0x6ct
        0x77t
        0x76t
        0x71t
        0x66t
        0x74t
        0x6ct
        0x63t
        0x61t
        0x76t
        0x75t
        0x2at
        0x19t
        0xat
        0x1t
        0x1bt
        0x2ct
        0x0t
        0x1at
        0x1t
        0x1bt
        0x29t
        0x2dt
        0x2et
        0x1at
        0xbt
        0x6t
        0xat
        0x1t
        0xct
        0xat
        0x21t
        0xat
        0x1bt
        0x18t
        0x0t
        0x1dt
        0x4t
        0x1ft
        0x3at
        0x3dt
        0x28t
        0x2at
        0x6ft
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x6ft
        0x2at
        0x39t
        0x2at
        0x21t
        0x3bt
        0x3ct
        0x6ft
        0x29t
        0x26t
        0x23t
        0x2at
        0x61t
        0x45t
        0x9t
        0x26t
        0x23t
        0x2at
        0x6ft
        0x3ct
        0x26t
        0x35t
        0x2at
        0x75t
        0x6ft
        0x6ft
        0x57t
        0x55t
        0x4ct
        0x4ct
        0x59t
        0x58t
        0x1ct
        0x59t
        0x4at
        0x59t
        0x52t
        0x48t
        0x4ft
        0x12t
        0x28t
        0x10t
        0x12t
        0xbt
        0xbt
        0x12t
        0x15t
        0x1ct
        0x5bt
        0x18t
        0x14t
        0x9t
        0x9t
        0xet
        0xbt
        0xft
        0x1et
        0x1ft
        0x5bt
        0x1ft
        0x1et
        0x19t
        0xet
        0x1ct
        0x5bt
        0x1et
        0xdt
        0x1et
        0x15t
        0xft
        0x5bt
        0x17t
        0x12t
        0x15t
        0x1et
        0x55t
        0x62t
        0x44t
        0x4ft
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x43t
        0x46t
        0x52t
        0x57t
        0x42t
        0x53t
        0x16t
        0x43t
        0x58t
        0x44t
        0x53t
        0x55t
        0x59t
        0x44t
        0x52t
        0x53t
        0x52t
        0x16t
        0x52t
        0x53t
        0x54t
        0x43t
        0x51t
        0x7at
        0x59t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x16t
        0x57t
        0x52t
        0x52t
        0x5ft
        0x58t
        0x51t
        0x16t
        0x42t
        0x59t
        0x16t
        0x79t
        0x58t
        0x51t
        0x59t
        0x5ft
        0x58t
        0x51t
        0x73t
        0x40t
        0x53t
        0x58t
        0x42t
        0x18t
        0x3at
        0x11t
        0x0t
        0x8t
        0x15t
        0x6t
        0x13t
        0x13t
        0x2t
        0xat
        0x17t
        0x13t
        0x58t
        0x5dt
        0x48t
        0x5dt
        0x7ft
        0x7et
        0x44t
        0x77t
        0x74t
        0x7ct
        0x7ct
        0x72t
        0x75t
        0x7ct
        0x2bt
        0x2at
        0x2dt
        0x3at
        0x28t
        0x23t
        0x20t
        0x28t
        0x3ct
        0x5bt
        0x54t
        0x53t
        0x54t
        0x4et
        0x55t
        0x58t
        0x59t
        0x1dt
        0x58t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x1dt
        0x4et
        0x55t
        0x52t
        0x48t
        0x51t
        0x59t
        0x1dt
        0x53t
        0x52t
        0x49t
        0x1dt
        0x5ft
        0x58t
        0x1dt
        0x48t
        0x4dt
        0x59t
        0x5ct
        0x49t
        0x58t
        0x59t
        0x1dt
        0x49t
        0x52t
        0x1dt
        0x72t
        0x53t
        0x5at
        0x52t
        0x54t
        0x53t
        0x5at
        0x78t
        0x4bt
        0x58t
        0x53t
        0x49t
        0x13t
        0x6bt
        0x66t
        0x7et
        0x68t
        0x7et
        0x7et
        0x64t
        0x62t
        0x63t
        0x52t
        0x64t
        0x69t
        0x48t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x64t
        0x4ft
        0x52t
        0x56t
        0x5et
        0x69t
        0x71t
        0x73t
        0x6at
        0x6at
        0x7ft
        0x7et
        0x5ft
        0x6ct
        0x7ft
        0x74t
        0x6et
        0x69t
        0x3at
        0x27t
        0x3at
        0x31t
        0x37t
        0x20t
        0x36t
        0x3bt
        0x32t
        0x27t
        0x4bt
        0x4dt
        0x5at
        0x4ct
        0x41t
        0x48t
        0x5dt
        0x67t
        0x5bt
        0x57t
        0x5ct
        0x5dt
        0x77t
        0x6at
        0x6et
        0x66t
        0x55t
        0x58t
        0x51t
        0x44t
    .end array-data
.end method

.method public static A07(Landroid/content/Context;)V
    .registers 6

    .line 101675
    sget-object v4, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    monitor-enter v4

    .line 101676
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101677
    .local v1, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 101678
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101679
    :cond_23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/lh;->A09(Landroid/content/Context;I)V

    .line 101680
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101681
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101682
    .end local v1    # "debugFile":Ljava/io/File;
    monitor-exit v4

    .line 101683
    return-void

    .line 101684
    :catchall_33
    move-exception v0

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static A08(Landroid/content/Context;)V
    .registers 6

    .line 101685
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101686
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 101687
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 101688
    .local v1, "eventCount":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/lh;->A09(Landroid/content/Context;I)V

    .line 101689
    return-void
.end method

.method public static A09(Landroid/content/Context;I)V
    .registers 7

    .line 101690
    const/16 v2, 0x41

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 101691
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101692
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 101693
    if-gez p1, :cond_2b

    .line 101694
    :goto_19
    const/16 v2, 0x4b

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101696
    return-void

    .line 101697
    :cond_2b
    move v4, p1

    goto :goto_19
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;)V
    .registers 4

    .line 101698
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101699
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 101700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object p1

    const/16 p0, 0x2f

    const/16 v1, 0x12

    const/16 v0, 0x31

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 101701
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101702
    :cond_2b
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;)V
    .registers 5

    .line 101703
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 101704
    .local v0, "attempt":Ljava/lang/Integer;
    if-nez v2, :cond_38

    .line 101705
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A05()Lcom/facebook/ads/redexgen/X/lF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lF;->AB6()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 101706
    sget-object p0, Lcom/facebook/ads/redexgen/X/lh;->A03:Ljava/lang/String;

    const/16 v2, 0xbd

    const/16 v1, 0x42

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101707
    :cond_23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101708
    :goto_28
    sget-object v1, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101709
    return-void

    .line 101710
    :cond_38
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/lj;Lcom/facebook/ads/redexgen/X/lA;)V
    .registers 10

    .line 101711
    if-eqz p0, :cond_109

    if-eqz p1, :cond_109

    .line 101712
    sget-object v7, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    monitor-enter v7

    .line 101713
    :try_start_7
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 101714
    .local v1, "processSpecificName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101715
    .local v2, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 101716
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/mx;->A07(Landroid/content/Context;)I

    move-result v3

    .line 101717
    .local v3, "debugLogFileSizeLimit":I
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 101718
    .local v4, "fileSize":J
    if-lez v3, :cond_c6

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-lez v3, :cond_c6

    .line 101719
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 101720
    .local v6, "deleted":Z
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A09(Landroid/content/Context;I)V

    .line 101721
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101722
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101723
    if-nez v3, :cond_48

    goto :goto_b0

    .line 101724
    :cond_48
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A04()Lcom/facebook/ads/redexgen/X/lD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lD;->A69()Ljava/util/Map;

    move-result-object v4

    .line 101725
    .local v7, "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x17f

    const/4 v3, 0x7

    const/16 v0, 0x3e

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10f

    const/16 v5, 0xa

    const/16 v0, 0x67

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101726
    const/16 v5, 0x186

    const/16 v3, 0xc

    const/16 v0, 0x44

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101727
    const/16 v3, 0x961

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 101728
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101729
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x66

    const/16 v3, 0x24

    const/16 v0, 0x33

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A06:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101730
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101731
    invoke-static {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/lh;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/lA;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/lj;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_ae} :catch_fc
    .catchall {:try_start_7 .. :try_end_ae} :catchall_106

    .line 101732
    :try_start_ae
    monitor-exit v7

    return-void
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_106

    .line 101733
    :goto_b0
    :try_start_b0
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101734
    .end local v3    # "debugLogFileSizeLimit":I
    .end local v4    # "fileSize":J
    .end local v6    # "deleted":Z
    .end local v7    # "shortDebugEventEnvData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c6
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/lh;->A05(Lcom/facebook/ads/redexgen/X/lj;)Lorg/json/JSONObject;

    move-result-object v2

    .line 101735
    .local v3, "debugLogJson":Lorg/json/JSONObject;
    const v0, 0x8000

    invoke-virtual {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 101736
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101737
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 101738
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 101739
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/lh;->A08(Landroid/content/Context;)V

    goto :goto_104
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_fc} :catch_fc
    .catchall {:try_start_b0 .. :try_end_fc} :catchall_106

    .line 101740
    :catch_fc
    move-exception v1

    .line 101741
    .local v1, "e":Ljava/lang/Exception;
    :try_start_fd
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101742
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_104
    monitor-exit v7

    goto :goto_109
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v7
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0

    .line 101743
    :cond_109
    :goto_109
    return-void
.end method

.method public static A0D(Ljava/lang/String;)V
    .registers 2

    .line 101744
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101745
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101746
    return-void
.end method

.method public static A0E(Ljava/lang/String;I)V
    .registers 6

    .line 101747
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 101748
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lh;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/lh;->A01:[Ljava/lang/String;

    const-string v1, "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2b

    .line 101749
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101750
    :cond_2b
    sget-object v1, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101751
    return-void

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101752
    :cond_3b
    const/16 v2, 0x122

    const/16 v1, 0x35

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/lA;)Z
    .registers 4

    .line 101753
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/mx;->A0O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101754
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/lh;->A0H(Lcom/facebook/ads/redexgen/X/lA;)Z

    move-result v0

    return v0

    .line 101755
    :cond_b
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/lh;->A0G(Lcom/facebook/ads/redexgen/X/lA;)Z

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lh;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/lh;->A01:[Ljava/lang/String;

    const-string v1, "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/lA;)Z
    .registers 15

    .line 101756
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 101757
    .local v2, "debugLogEvents":Lorg/json/JSONArray;
    sget-object v13, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    monitor-enter v13

    .line 101758
    const/4 v7, 0x0

    .line 101759
    .local v4, "skippedEvents":I
    const/4 v4, 0x0

    .line 101760
    .local v5, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 101761
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v12, 0x0

    .line 101762
    .local v7, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 101763
    :try_start_d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101764
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101765
    .local v10, "debugFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 101766
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101767
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 101768
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 101769
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 101770
    :cond_48
    :goto_48
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v11, "line":Ljava/lang/String;
    if-eqz v0, :cond_b1

    .line 101771
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101772
    .local v0, "debugLog":Lorg/json/JSONObject;
    const/16 v2, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101773
    .local v12, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 101774
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 101775
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101776
    .local v13, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 101777
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/mx;->A02(Landroid/content/Context;)I

    move-result v2

    .line 101778
    .local p0, "retryLimit":I
    const/4 v0, -0x1

    if-le v2, v0, :cond_97

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-le v1, v0, :cond_97

    .line 101779
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/lh;->A0D(Ljava/lang/String;)V

    .line 101780
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 101781
    :cond_97
    const/16 v2, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101782
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_48

    .line 101783
    :cond_ab
    const/4 v0, 0x0

    goto :goto_7e

    .line 101784
    :cond_ad
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_48

    .line 101785
    :cond_b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101786
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 101787
    .local v9, "length":I
    const/4 v2, 0x0

    .local v12, "i":I
    :goto_bb
    if-ge v2, v9, :cond_d1

    .line 101788
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 101789
    .local v13, "debugLog":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101790
    .end local v13    # "debugLog":Lorg/json/JSONObject;
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 101791
    .end local v12    # "i":I
    :cond_d1
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101792
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 101793
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 101794
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 101795
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "length":I
    .end local v11    # "line":Ljava/lang/String;
    :cond_ef
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/lh;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/lh;->A09(Landroid/content/Context;I)V

    .line 101796
    if-lez v7, :cond_135

    .line 101797
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v10

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v2

    sget v9, Lcom/facebook/ads/redexgen/X/lf;->A2Y:I

    const/16 v6, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x16f

    const/16 v6, 0x10

    const/16 v0, 0x66

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101798
    invoke-interface {v10, v2, v9, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 101799
    :cond_135
    if-eqz v12, :cond_13a
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_137} :catch_161
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_137} :catch_15f
    .catchall {:try_start_d .. :try_end_137} :catchall_193

    .line 101800
    :try_start_137
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 101801
    :cond_13a
    if-eqz v5, :cond_13f

    .line 101802
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 101803
    :cond_13f
    if-eqz v4, :cond_144

    .line 101804
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101805
    :cond_144
    if-eqz v3, :cond_152

    .line 101806
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_152
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_14a} :catch_14a
    .catchall {:try_start_137 .. :try_end_14a} :catchall_1bc

    .line 101807
    :catch_14a
    move-exception v1

    .line 101808
    .local v0, "ex":Ljava/io/IOException;
    :try_start_14b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101809
    :cond_152
    :goto_152
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101810
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 101811
    const/4 v0, 0x1

    return v0
    :try_end_15f
    .catchall {:try_start_14b .. :try_end_15f} :catchall_1bc

    .line 101812
    :catch_15f
    move-exception v1

    goto :goto_162

    :catch_161
    move-exception v1

    .line 101813
    .local v9, "e":Ljava/lang/Exception;
    :goto_162
    :try_start_162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101814
    if-eqz v12, :cond_16e
    :try_end_16b
    .catchall {:try_start_162 .. :try_end_16b} :catchall_193

    .line 101815
    :try_start_16b
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 101816
    :cond_16e
    if-eqz v5, :cond_173

    .line 101817
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 101818
    :cond_173
    if-eqz v4, :cond_178

    .line 101819
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101820
    :cond_178
    if-eqz v3, :cond_186

    .line 101821
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_186
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_17e} :catch_17e
    .catchall {:try_start_16b .. :try_end_17e} :catchall_1bc

    .line 101822
    :catch_17e
    move-exception v1

    .line 101823
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_17f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101824
    :cond_186
    :goto_186
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101825
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v13

    .line 101826
    const/4 v0, 0x0

    return v0
    :try_end_193
    .catchall {:try_start_17f .. :try_end_193} :catchall_1bc

    .line 101827
    .end local v10    # "debugFile":Ljava/io/File;
    :catchall_193
    move-exception v2

    .line 101828
    .end local v9    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_199

    .line 101829
    :try_start_196
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 101830
    :cond_199
    if-eqz v5, :cond_19e

    .line 101831
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 101832
    :cond_19e
    if-eqz v4, :cond_1a3

    .line 101833
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101834
    :cond_1a3
    if-eqz v3, :cond_1b1

    .line 101835
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1b1
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1a9} :catch_1a9
    .catchall {:try_start_196 .. :try_end_1a9} :catchall_1bc

    .line 101836
    .restart local v4    # "skippedEvents":I
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v8
    :catch_1a9
    move-exception v1

    .line 101837
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_1aa
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101838
    :cond_1b1
    :goto_1b1
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101839
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101840
    .end local v2    # "debugLogEvents":Lorg/json/JSONArray;
    .end local p2
    throw v2
    :try_end_1bc
    .catchall {:try_start_1aa .. :try_end_1bc} :catchall_1bc

    .line 101841
    .end local v4    # "skippedEvents":I
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v8
    :catchall_1bc
    move-exception v0

    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .restart local v2    # "debugLogEvents":Lorg/json/JSONArray;
    .restart local p2
    :try_start_1bd
    monitor-exit v13
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    throw v0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/lA;)Z
    .registers 18

    .line 101842
    sget-object v16, Lcom/facebook/ads/redexgen/X/lh;->A02:Ljava/lang/Object;

    monitor-enter v16

    .line 101843
    const/4 v9, 0x0

    .line 101844
    .local v3, "skippedEvents":I
    const/4 v5, 0x0

    .line 101845
    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 101846
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v15, 0x0

    .line 101847
    .local v6, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 101848
    .local v7, "debugFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 101849
    .local v8, "tempFileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 101850
    .local v9, "tempFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_a
    const/16 v2, 0x119

    const/16 v1, 0x9

    const/16 v0, 0x33

    move-object/from16 v6, p0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101851
    invoke-static {v0, v6}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 101852
    .local v11, "processSpecificDebugFileName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101853
    .local v12, "debugFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v11, 0xff

    const/4 v10, 0x5

    const/16 v0, 0x19

    invoke-static {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 101854
    .local v13, "tempFileName":Ljava/lang/String;
    invoke-static {v6, v10}, Lcom/facebook/ads/redexgen/X/lh;->A0A(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;)V

    .line 101855
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 101856
    const v0, 0x8000

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 101857
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/lA;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_51} :catch_1e3
    .catchall {:try_start_a .. :try_end_51} :catchall_21f

    .line 101858
    :try_start_51
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_167
    .catchall {:try_start_51 .. :try_end_57} :catchall_164

    .line 101859
    :try_start_57
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v15, v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_161
    .catchall {:try_start_57 .. :try_end_5d} :catchall_15e

    .line 101860
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v14, "line":Ljava/lang/String;
    if-eqz v0, :cond_130
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_15b
    .catchall {:try_start_5d .. :try_end_63} :catchall_158

    .line 101861
    :try_start_63
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101862
    .local v0, "debugLog":Lorg/json/JSONObject;
    const/16 v12, 0x157

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 101863
    .local v15, "eventId":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 101864
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v16, "inputStream":Ljava/io/FileInputStream;
    if-eqz v0, :cond_e4
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_85} :catch_106
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_85} :catch_15b
    .catchall {:try_start_63 .. :try_end_85} :catchall_158

    .line 101865
    :try_start_85
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101866
    .local v10, "attempt":Ljava/lang/Integer;
    if-eqz v0, :cond_96
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_8f} :catch_e2
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8f} :catch_12d
    .catchall {:try_start_85 .. :try_end_8f} :catchall_12a

    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_97
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_94} :catch_94
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_124
    .catchall {:try_start_8f .. :try_end_94} :catchall_121

    .line 101867
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_94
    move-exception v13

    goto :goto_107

    .line 101868
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    .restart local v10    # "attempt":Ljava/lang/Integer;
    .restart local v15    # "eventId":Ljava/lang/String;
    :cond_96
    const/4 v0, 0x0

    :goto_97
    :try_start_97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 101869
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/mx;->A02(Landroid/content/Context;)I

    move-result v12

    .line 101870
    .local p1, "retryLimit":I
    const/4 v0, -0x1

    .end local p1
    .local v5, "retryLimit":I
    .local p2, "inputStreamReader":Ljava/io/InputStreamReader;
    if-le v12, v0, :cond_b2
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_a2} :catch_e2
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a2} :catch_12d
    .catchall {:try_start_97 .. :try_end_a2} :catchall_12a

    :try_start_a2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .local p1, "bufferedReader":Ljava/io/BufferedReader;
    add-int/lit8 v0, v12, -0x1

    if-le v1, v0, :cond_b2
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_aa} :catch_b0
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_aa} :catch_127
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_221

    .line 101871
    :try_start_aa
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/lh;->A0D(Ljava/lang/String;)V

    .line 101872
    add-int/lit8 v9, v9, 0x1

    goto :goto_5d
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_b0} :catch_104
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_155
    .catchall {:try_start_aa .. :try_end_b0} :catchall_152

    .line 101873
    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_b0
    move-exception v13

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    goto :goto_107

    .line 101874
    .end local v6
    .restart local p1
    :cond_b2
    :try_start_b2
    const/16 v12, 0x104

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5d
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_e2} :catch_104
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_e2} :catch_155
    .catchall {:try_start_b2 .. :try_end_e2} :catchall_152

    .line 101876
    .end local p1
    .end local p2
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    :catch_e2
    move-exception v13

    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto :goto_107

    .line 101877
    .end local p1
    .end local p2
    .restart local v0    # "debugLog":Lorg/json/JSONObject;
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v15    # "eventId":Ljava/lang/String;
    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    :cond_e4
    :try_start_e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_5d
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_104} :catch_104
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_104} :catch_155
    .catchall {:try_start_e4 .. :try_end_104} :catchall_152

    .line 101878
    .end local v0    # "debugLog":Lorg/json/JSONObject;
    .end local v15    # "eventId":Ljava/lang/String;
    :catch_104
    move-exception v13

    goto :goto_107

    .end local v0
    .end local v15
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "retryLimit":I
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_106
    move-exception v13

    .line 101879
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "retryLimit":I
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    :goto_107
    :try_start_107
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A05()Lcom/facebook/ads/redexgen/X/lF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lF;->AB6()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 101880
    sget-object v12, Lcom/facebook/ads/redexgen/X/lh;->A03:Ljava/lang/String;

    const/16 v11, 0x99

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_121} :catch_155
    .catchall {:try_start_107 .. :try_end_121} :catchall_152

    .line 101881
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v10    # "attempt":Ljava/lang/Integer;
    .end local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local v12    # "debugFile":Ljava/io/File;
    .end local v13    # "tempFileName":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15
    :catchall_121
    move-exception v2

    goto/16 :goto_222

    .line 101882
    :catch_124
    move-exception v1

    goto/16 :goto_1e4

    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_127
    move-exception v1

    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    goto/16 :goto_1e4

    .line 101883
    .end local v0
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local p1
    .end local p2
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_12a
    move-exception v2

    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto/16 :goto_222

    .line 101884
    .end local p1
    .end local p2
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_12d
    move-exception v1

    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .restart local p2
    goto/16 :goto_1e4

    .line 101885
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    :cond_130
    :try_start_130
    invoke-virtual {v6, v10}, Lcom/facebook/ads/redexgen/X/lA;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 101886
    const/4 v0, 0x0

    invoke-virtual {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/lA;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 101887
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 101888
    .local v0, "buffer":[B
    :goto_13d
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v5, "length":I
    if-lez v1, :cond_148

    .line 101889
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_13d

    .line 101890
    :cond_148
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101891
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 101892
    invoke-static {v6, v10}, Lcom/facebook/ads/redexgen/X/lh;->A0A(Lcom/facebook/ads/redexgen/X/lA;Ljava/lang/String;)V

    goto :goto_169
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_152} :catch_155
    .catchall {:try_start_130 .. :try_end_152} :catchall_152

    .line 101893
    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    :catchall_152
    move-exception v2

    goto/16 :goto_222

    .line 101894
    :catch_155
    move-exception v1

    goto/16 :goto_1e4

    .line 101895
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_158
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    goto/16 :goto_222

    .line 101896
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_15b
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1
    .restart local p2
    goto/16 :goto_1e4

    .line 101897
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p1
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_15e
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p2
    goto/16 :goto_222

    .line 101898
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_161
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local p2
    goto/16 :goto_1e4

    .line 101899
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .end local p2
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_164
    move-exception v2

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_222

    .line 101900
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :catch_167
    move-exception v1

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1e4

    .line 101901
    .end local v16    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local v12    # "debugFile":Ljava/io/File;
    .restart local v13    # "tempFileName":Ljava/lang/String;
    :cond_169
    :goto_169
    :try_start_169
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/lh;->A00(Landroid/content/Context;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/lh;->A09(Landroid/content/Context;I)V

    .line 101902
    if-lez v9, :cond_1af

    .line 101903
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v11

    const/16 v2, 0x10f

    const/16 v1, 0xa

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v2

    sget v10, Lcom/facebook/ads/redexgen/X/lf;->A2Y:I

    const/16 v12, 0x8a

    const/16 v1, 0xf

    const/16 v0, 0x40

    invoke-static {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v1

    .end local v11    # "processSpecificDebugFileName":Ljava/lang/String;
    .local v16, "processSpecificDebugFileName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .end local v12    # "debugFile":Ljava/io/File;
    .local p0, "debugFile":Ljava/io/File;
    const/16 v13, 0x16f

    const/16 v12, 0x10

    const/16 v0, 0x66

    invoke-static {v13, v12, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v1, v9}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101904
    invoke-interface {v11, v2, v10, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 101905
    .end local v11
    .end local v12
    .restart local v16    # "processSpecificDebugFileName":Ljava/lang/String;
    .restart local p0    # "debugFile":Ljava/io/File;
    :cond_1af
    if-eqz v15, :cond_1b4
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_1b1} :catch_1e3
    .catchall {:try_start_169 .. :try_end_1b1} :catchall_21f

    .line 101906
    :try_start_1b1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 101907
    :cond_1b4
    if-eqz v8, :cond_1b9

    .line 101908
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 101909
    :cond_1b9
    if-eqz v5, :cond_1be

    .line 101910
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 101911
    :cond_1be
    if-eqz v3, :cond_1c3

    .line 101912
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 101913
    :cond_1c3
    if-eqz v4, :cond_1c8

    .line 101914
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101915
    :cond_1c8
    if-eqz v7, :cond_1d6

    .line 101916
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1d6
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1ce} :catch_1ce
    .catchall {:try_start_1b1 .. :try_end_1ce} :catchall_254

    .line 101917
    :catch_1ce
    move-exception v1

    .line 101918
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1cf
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101919
    :cond_1d6
    :goto_1d6
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101920
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 101921
    const/4 v0, 0x1

    return v0
    :try_end_1e3
    .catchall {:try_start_1cf .. :try_end_1e3} :catchall_254

    .line 101922
    :catch_1e3
    move-exception v1

    .line 101923
    .local v1, "e":Ljava/io/IOException;
    :goto_1e4
    :try_start_1e4
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101924
    if-eqz v15, :cond_1f0
    :try_end_1ed
    .catchall {:try_start_1e4 .. :try_end_1ed} :catchall_21f

    .line 101925
    :try_start_1ed
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 101926
    :cond_1f0
    if-eqz v8, :cond_1f5

    .line 101927
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 101928
    :cond_1f5
    if-eqz v5, :cond_1fa

    .line 101929
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 101930
    :cond_1fa
    if-eqz v3, :cond_1ff

    .line 101931
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 101932
    :cond_1ff
    if-eqz v4, :cond_204

    .line 101933
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101934
    :cond_204
    if-eqz v7, :cond_212

    .line 101935
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_212
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_20a} :catch_20a
    .catchall {:try_start_1ed .. :try_end_20a} :catchall_254

    .line 101936
    :catch_20a
    move-exception v1

    .line 101937
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_20b
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101938
    :cond_212
    :goto_212
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101939
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v16

    .line 101940
    const/4 v0, 0x0

    return v0
    :try_end_21f
    .catchall {:try_start_20b .. :try_end_21f} :catchall_254

    .line 101941
    .end local v13    # "tempFileName":Ljava/lang/String;
    .end local v16    # "processSpecificDebugFileName":Ljava/lang/String;
    .end local p0    # "debugFile":Ljava/io/File;
    :catchall_21f
    move-exception v2

    goto :goto_222

    .end local v0    # "ex":Ljava/io/IOException;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local p1
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_221
    move-exception v2

    .line 101942
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local p1
    .end local v1    # "e":Ljava/io/IOException;
    :goto_222
    if-eqz v15, :cond_227

    .line 101943
    :try_start_224
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 101944
    :cond_227
    if-eqz v8, :cond_22c

    .line 101945
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 101946
    :cond_22c
    if-eqz v5, :cond_231

    .line 101947
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 101948
    :cond_231
    if-eqz v3, :cond_236

    .line 101949
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 101950
    :cond_236
    if-eqz v4, :cond_23b

    .line 101951
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 101952
    :cond_23b
    if-eqz v7, :cond_249

    .line 101953
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_249
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_241} :catch_241
    .catchall {:try_start_224 .. :try_end_241} :catchall_254

    .line 101954
    .restart local v3    # "skippedEvents":I
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    :catch_241
    move-exception v1

    .line 101955
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_242
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 101956
    :cond_249
    :goto_249
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101957
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101958
    .end local p3
    throw v2
    :try_end_254
    .catchall {:try_start_242 .. :try_end_254} :catchall_254

    .line 101959
    .end local v3    # "skippedEvents":I
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "debugFileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "tempFileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "tempFileOutputStream":Ljava/io/FileOutputStream;
    :catchall_254
    move-exception v0

    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .restart local p3
    :try_start_255
    monitor-exit v16
    :try_end_256
    .catchall {:try_start_255 .. :try_end_256} :catchall_254

    throw v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .registers 2

    .line 101960
    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A05:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/facebook/ads/redexgen/X/lh;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
