###### Class com.facebook.ads.redexgen.X.AT (com.facebook.ads.redexgen.X.AT)
.class public final Lcom/facebook/ads/redexgen/X/AT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bs;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/le;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/bU;

.field public final A04:Lcom/facebook/ads/redexgen/X/bG;

.field public final A05:Lcom/facebook/ads/redexgen/X/ay;

.field public final A06:Lcom/facebook/ads/redexgen/X/au;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 445
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P814sFImmOC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RvJjsajerkLdUat3TDI8NPR3DDSWtO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZLSXhw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wxtWSqUF9a7Aw2d1StIocmcoa4QX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "58xAXbC3p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zj1UZNXOzFX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AT;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/bs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AT;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bU;Lcom/facebook/ads/redexgen/X/le;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 29700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29701
    new-instance v0, Lcom/facebook/ads/redexgen/X/AZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AZ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/bG;

    .line 29702
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AT;->A0B()V

    .line 29703
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    .line 29704
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bU;->A04()Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AS;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    .line 29705
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    .line 29706
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/bU;->A05()Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/au;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    .line 29707
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:Ljava/util/concurrent/Executor;

    .line 29708
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    .line 29709
    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29710
    const/4 v1, 0x0

    .line 29711
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/ay;->AI0(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    .line 29712
    if-eqz v1, :cond_e

    .line 29713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/ay;->AMS(Ljava/io/OutputStream;[B)V

    .line 29714
    :cond_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 29715
    if-eqz v1, :cond_17
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    .line 29716
    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_17

    .line 29717
    :catch_17
    :cond_17
    return v0

    .line 29718
    :catchall_18
    move-exception v0

    if-eqz v1, :cond_1e

    .line 29719
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1e

    .line 29720
    :catch_1e
    :cond_1e
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b1;
        }
    .end annotation

    .line 29721
    const/16 v2, 0xdc

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    .line 29722
    .local v1, "uc":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 29723
    .local v2, "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    const/4 v8, 0x0

    :try_start_b
    iput-boolean v8, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:Z

    .line 29724
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pR;->A04()Z

    move-result v0

    .line 29725
    .local v4, "isE2E":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AT;->A09()Ljava/net/Proxy;

    move-result-object v1

    .line 29726
    .local v6, "proxy":Ljava/net/Proxy;
    :goto_18
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/AT;->A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 29727
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/AT;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/b5;)V

    .line 29728
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/AT;->A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/b5;)V

    .line 29729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 29730
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A08()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/au;->ACi(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 29731
    :cond_37
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 29732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:Z

    .line 29733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A01()Ljava/util/Set;

    move-result-object v5

    .line 29734
    .local v8, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A02()Ljava/util/Set;

    move-result-object v2

    .line 29735
    .local p0, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_56

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_54

    .line 29736
    :cond_52
    move-object v1, v6

    goto :goto_18

    .line 29737
    :goto_54
    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    .line 29738
    .local p1, "pinCerts":Z
    :goto_57
    if-eqz v2, :cond_60

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v8, 0x1

    .line 29739
    .local v3, "pinKeys":Z
    :cond_60
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_8a

    if-nez v1, :cond_68

    if-eqz v8, :cond_8a
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_68} :catch_c0
    .catchall {:try_start_b .. :try_end_68} :catchall_163

    .line 29740
    :cond_68
    :try_start_68
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/ar;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_8a
    :try_end_6f
    .catch Ljava/security/cert/CertificateException; {:try_start_68 .. :try_end_6f} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_163

    .line 29741
    :catch_6f
    move-exception v5

    .line 29742
    .local v7, "e":Ljava/lang/Exception;
    :try_start_70
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A1y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ACp(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    goto :goto_8a

    .line 29743
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v5

    .line 29744
    .local v7, "e":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A1z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ACp(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 29745
    :cond_8a
    :goto_8a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A08()[B

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 29746
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A08()[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/AT;->A00(Ljava/net/HttpURLConnection;[B)I

    .line 29747
    :cond_9d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 29748
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/AT;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v1

    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    .local v0, "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    goto :goto_ad

    .line 29749
    .end local v0    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    :cond_a8
    new-instance v1, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {v1, v4, v6}, Lcom/facebook/ads/redexgen/X/AU;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_ad} :catch_c0
    .catchall {:try_start_70 .. :try_end_ad} :catchall_163

    .line 29750
    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    .end local v3    # "pinKeys":Z
    .end local v4    # "isE2E":Z
    .end local v6    # "proxy":Ljava/net/Proxy;
    .end local v8    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "pinCerts":Z
    .restart local v0    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    :goto_ad
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 29751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/au;->ACj(Lcom/facebook/ads/redexgen/X/bw;)V

    .line 29752
    :cond_ba
    if-eqz v4, :cond_bf

    .line 29753
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29754
    :cond_bf
    return-object v1

    .line 29755
    :catch_c0
    move-exception v6

    .line 29756
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c1
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/AT;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v3

    .line 29757
    if-eqz v3, :cond_e0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c7} :catch_e6
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_13c

    :try_start_c7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/AU;->A9p()I

    move-result v0

    if-lez v0, :cond_e0
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_163

    .line 29758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 29759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/au;->ACj(Lcom/facebook/ads/redexgen/X/bw;)V

    .line 29760
    :cond_da
    if-eqz v4, :cond_df

    .line 29761
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29762
    :cond_df
    return-object v3

    .line 29763
    :cond_e0
    :try_start_e0
    new-instance v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/b1;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/bw;)V

    goto :goto_162
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_163

    .line 29764
    .local v3, "ee":Ljava/lang/Exception;
    :catch_e6
    :try_start_e6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x75

    const/16 v1, 0xd

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29765
    .end local v3    # "ee":Ljava/lang/Exception;
    if-eqz v3, :cond_15d
    :try_end_fd
    .catchall {:try_start_e6 .. :try_end_fd} :catchall_13c

    :try_start_fd
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/bw;->A9p()I

    move-result v0

    if-lez v0, :cond_15d
    :try_end_103
    .catchall {:try_start_fd .. :try_end_103} :catchall_163

    .line 29766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 29767
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_136

    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v1, "IlkFDbfWlXmKaUvETbHYmdNk6OEHYi1H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BN3YcSqfdOqAJI6hng3gZMbRThXyngdJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Lcom/facebook/ads/redexgen/X/au;->ACj(Lcom/facebook/ads/redexgen/X/bw;)V

    .line 29768
    :cond_130
    if-eqz v4, :cond_135

    .line 29769
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29770
    :cond_135
    return-object v3

    :cond_136
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29771
    .restart local v1    # "uc":Ljava/net/HttpURLConnection;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    .restart local p6
    :catchall_13c
    if-eqz v3, :cond_157

    :try_start_13e
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/bw;->A9p()I

    move-result v0

    if-lez v0, :cond_157
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_163

    .line 29772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 29773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/au;->ACj(Lcom/facebook/ads/redexgen/X/bw;)V

    .line 29774
    :cond_151
    if-eqz v4, :cond_156

    .line 29775
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29776
    :cond_156
    return-object v3

    .line 29777
    :cond_157
    :try_start_157
    new-instance v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/b1;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/bw;)V

    goto :goto_162

    :cond_15d
    new-instance v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/b1;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/bw;)V

    .end local v1    # "uc":Ljava/net/HttpURLConnection;
    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    .end local p6
    :goto_162
    throw v0
    :try_end_163
    .catchall {:try_start_157 .. :try_end_163} :catchall_163

    .line 29778
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    :catchall_163
    move-exception v1

    .end local v0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_171

    .line 29779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/au;->ACj(Lcom/facebook/ads/redexgen/X/bw;)V

    .line 29780
    :cond_171
    if-eqz v4, :cond_176

    .line 29781
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29782
    :cond_176
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 6

    .line 29783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A04()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29784
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A0C(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 29785
    :cond_b
    const/4 v3, 0x0

    .line 29786
    .local v0, "httpResponse":Lcom/facebook/ads/redexgen/X/bw;
    :try_start_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A01(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v3

    goto :goto_23
    :try_end_11
    .catch Lcom/facebook/ads/redexgen/X/b1; {:try_start_c .. :try_end_11} :catch_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_18

    .line 29787
    .end local v1
    :catch_11
    move-exception v1

    .line 29788
    .local v1, "hre":Lcom/facebook/ads/redexgen/X/b1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/ay;->AEu(Lcom/facebook/ads/redexgen/X/b1;)Z

    .end local v1    # "hre":Lcom/facebook/ads/redexgen/X/b1;
    goto :goto_23

    .line 29789
    :catch_18
    move-exception v2

    .line 29790
    .local v1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    new-instance v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/b1;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/bw;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ay;->AEu(Lcom/facebook/ads/redexgen/X/b1;)Z

    .line 29791
    :goto_23
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/az;Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 5

    .line 29792
    new-instance v0, Lcom/facebook/ads/redexgen/X/AW;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/az;Lcom/facebook/ads/redexgen/X/bQ;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A02(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 11

    .line 29793
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AV;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/az;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bQ;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A02(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/AU;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29794
    const/4 v4, 0x0

    .line 29795
    .local v0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 29796
    .local v1, "responseBody":[B
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 29797
    if-eqz v4, :cond_e

    .line 29798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/ay;->AIg(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 29799
    :cond_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/AU;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 29800
    if-eqz v4, :cond_18
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_19

    .line 29801
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_18

    .line 29802
    :catch_18
    :cond_18
    return-object v0

    .line 29803
    :catchall_19
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v1, "eS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_39

    .line 29804
    :try_start_36
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_39

    .line 29805
    :catch_39
    :cond_39
    throw v3
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/AU;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29806
    const/4 v2, 0x0

    .line 29807
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 29808
    .local v1, "responseBody":[B
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/ay;->AHz(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 29809
    if-eqz v2, :cond_10

    .line 29810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/ay;->AIg(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 29811
    :cond_10
    new-instance v0, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/AU;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 29812
    if-eqz v2, :cond_1a
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_1b

    .line 29813
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1a

    .line 29814
    :catch_1a
    :cond_1a
    return-object v0

    .line 29815
    :catchall_1b
    move-exception v0

    if-eqz v2, :cond_21

    .line 29816
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_21

    .line 29817
    :catch_21
    :cond_21
    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/AT;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29818
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_12

    .line 29819
    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 29820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ay;->AHy(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 29821
    :catch_12
    move-exception v4

    .line 29822
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()Ljava/net/Proxy;
    .registers 7

    .line 29823
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 29824
    .local v0, "proxy":Ljava/net/Proxy;
    const/16 v2, 0xc0

    const/16 v1, 0xe

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29825
    .local v1, "proxyAddress":Ljava/lang/String;
    const/16 v2, 0xce

    const/16 v1, 0xe

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29826
    .local v2, "portStr":Ljava/lang/String;
    const/4 v4, -0x1

    .line 29827
    .local v3, "port":I
    if-eqz v0, :cond_27

    .line 29828
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_27
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_26} :catch_26

    .line 29829
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_26
    return-object v3

    .line 29830
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_27
    :goto_27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_61

    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v1, "UW2PAxLqNCWQ7bdKo0A7Pw4nSyNkIv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "26yRDH09B"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_60

    if-lez v4, :cond_60

    const v0, 0xffff

    if-gt v4, v0, :cond_60

    .line 29831
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/net/Proxy;

    invoke-direct {v3, v1, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 29832
    :cond_60
    return-object v3

    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .registers 1

    const/16 v0, 0xe3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/AT;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x10t
        0x12t
        0x37t
        0x3at
        0x5ft
        0x37t
        0x35t
        0x4at
        0x47t
        0xet
        0x4at
        0x48t
        0xft
        0x4ct
        0x5at
        0x5dt
        0x43t
        0xft
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4ft
        0xet
        0x58t
        0x4ft
        0x42t
        0x47t
        0x4at
        0xet
        0x7bt
        0x7ct
        0x62t
        0xet
        0x41t
        0x48t
        0xet
        0x5et
        0x66t
        0x6at
        0x9t
        0x1et
        0x6at
        0x77t
        0x6at
        0x1ct
        0x10t
        0x62t
        0x64t
        0x10t
        0xdt
        0x10t
        0x37t
        0x3bt
        0x6ft
        0x69t
        0x62t
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x51t
        0x11t
        0x3bt
        0x32t
        0x3ft
        0x2et
        0x2dt
        0x3bt
        0x3at
        0x5et
        0x2at
        0x37t
        0x33t
        0x3bt
        0x5et
        0x43t
        0x5et
        0x1t
        0x23t
        0x32t
        0x32t
        0x2ft
        0x28t
        0x21t
        0x66t
        0x32t
        0x2et
        0x23t
        0x66t
        0x2et
        0x32t
        0x32t
        0x36t
        0x66t
        0x34t
        0x23t
        0x35t
        0x36t
        0x29t
        0x28t
        0x35t
        0x23t
        0x66t
        0x32t
        0x2ft
        0x2bt
        0x23t
        0x22t
        0x66t
        0x29t
        0x33t
        0x32t
        0x26t
        0xdt
        0x1ct
        0x1ft
        0x7t
        0x1at
        0x3t
        0x48t
        0xdt
        0x1at
        0x1at
        0x7t
        0x1at
        0x22t
        0x23t
        0x31t
        0x5at
        0x4ft
        0x7at
        0x6bt
        0x6bt
        0x77t
        0x72t
        0x78t
        0x7at
        0x6ft
        0x72t
        0x74t
        0x75t
        0x34t
        0x63t
        0x36t
        0x6ct
        0x6ct
        0x6ct
        0x36t
        0x7dt
        0x74t
        0x69t
        0x76t
        0x36t
        0x6et
        0x69t
        0x77t
        0x7et
        0x75t
        0x78t
        0x74t
        0x7ft
        0x7et
        0x7ft
        0x20t
        0x78t
        0x73t
        0x7at
        0x69t
        0x68t
        0x7et
        0x6ft
        0x26t
        0x4et
        0x4ft
        0x5dt
        0x36t
        0x23t
        0x2ft
        0x39t
        0x3et
        0x20t
        0x6ct
        0x61t
        0x27t
        0x6ct
        0x61t
        0x25t
        0x18t
        0x4t
        0x4t
        0x0t
        0x5et
        0x0t
        0x2t
        0x1ft
        0x8t
        0x9t
        0x38t
        0x1ft
        0x3t
        0x4t
        0x7ft
        0x63t
        0x63t
        0x67t
        0x39t
        0x67t
        0x65t
        0x78t
        0x6ft
        0x6et
        0x47t
        0x78t
        0x65t
        0x63t
        0x34t
        0x3ft
        0x2et
        0x2dt
        0x35t
        0x28t
        0x31t
    .end array-data
.end method

.method public static declared-synchronized A0B()V
    .registers 2

    const-class v1, Lcom/facebook/ads/redexgen/X/AT;

    monitor-enter v1

    .line 29833
    :try_start_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_11

    .line 29834
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 29835
    :cond_11
    monitor-exit v1

    return-void

    .line 29836
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/b5;)V
    .registers 9

    .line 29837
    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29838
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A05()Lcom/facebook/ads/redexgen/X/b6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/b6;->A06:Lcom/facebook/ads/redexgen/X/b6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_51

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A08()[B

    move-result-object v0

    if-eqz v0, :cond_51

    .line 29839
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29840
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A08()[B

    move-result-object v5

    const/16 v2, 0x82

    const/4 v1, 0x5

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29841
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29842
    :cond_51
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A06()Ljava/util/Map;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_71

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_71
    sget-object v2, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v1, "s0c02ga9sXqOOqZgqzjFkG4II3gfLx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "iECV1gT3x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 29843
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    const/4 v2, 0x5

    const/16 v1, 0x4a

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29844
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29845
    const/16 v5, 0x42

    const/4 v2, 0x1

    const/16 v1, 0x76

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29846
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29847
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29848
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_85

    .line 29849
    :cond_be
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29850
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b5;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29851
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29852
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29853
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/AT;->A0E(Ljava/lang/String;II)V

    .line 29854
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/b5;Lcom/facebook/ads/redexgen/X/bq;)V
    .registers 5

    .line 29855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/bG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/bG;->A7Y(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/bq;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/AX;

    move-result-object v0

    .line 29856
    .local v0, "executor":Lcom/facebook/ads/redexgen/X/bP;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AX;->A04(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 29857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A04()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 29858
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A0C(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 29859
    :cond_16
    return-void
.end method

.method private A0E(Ljava/lang/String;II)V
    .registers 8

    .line 29860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/AT;->A09:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29861
    .local v0, "tagWithCount":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_45

    .line 29862
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29863
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/AT;->A0E(Ljava/lang/String;II)V

    .line 29864
    :cond_45
    return-void
.end method

.method private A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bq;Lcom/facebook/ads/redexgen/X/bQ;)V
    .registers 12

    .line 29865
    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AV;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/az;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bQ;)V

    .line 29866
    .local v0, "req":Lcom/facebook/ads/redexgen/X/AV;
    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/AT;->A0D(Lcom/facebook/ads/redexgen/X/b5;Lcom/facebook/ads/redexgen/X/bq;)V

    .line 29867
    return-void
.end method

.method private A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/b5;)V
    .registers 8

    .line 29868
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A06()Ljava/util/Map;

    move-result-object v4

    .line 29869
    .local v0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bQ;->A05()Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v3

    .line 29870
    .local v1, "commonRequestHeadersFactory":Lcom/facebook/ads/redexgen/X/bx;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29871
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29872
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29873
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_18

    .line 29874
    :cond_2e
    if-eqz v3, :cond_58

    .line 29875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    .line 29876
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A03()Z

    move-result v0

    .line 29877
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/bx;->A7G(Z)Ljava/util/Map;

    move-result-object v3

    .line 29878
    .local v2, "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29879
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29880
    .local p0, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29881
    .end local v4    # "name":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/String;
    goto :goto_42

    .line 29882
    .end local v2    # "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_58
    return-void
.end method

.method private final A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/b5;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29883
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v1

    .line 29884
    .local v0, "configuration":Lcom/facebook/ads/redexgen/X/bQ;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bQ;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 29885
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bQ;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 29886
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    .line 29887
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/b5;->A05()Lcom/facebook/ads/redexgen/X/b6;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/b5;->A06()Ljava/lang/String;

    move-result-object v0

    .line 29888
    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ay;->AIJ(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/b6;Ljava/lang/String;)V

    .line 29889
    return-void
.end method

.method private final A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/b5;)Z
    .registers 13

    .line 29890
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v6

    .line 29891
    .local v0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/bQ;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    .line 29892
    .local v1, "elapsedTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 29893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x43

    const/16 v3, 0xf

    const/16 v0, 0x23

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x2a

    const/4 v3, 0x7

    const/16 v0, 0x17

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 29894
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/bQ;->A00()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x31

    const/4 v3, 0x7

    const/16 v0, 0x6d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 29895
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/bQ;->A02()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29896
    :cond_58
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_69

    .line 29897
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/bQ;->A02()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_67

    :goto_66
    return v7

    :cond_67
    const/4 v7, 0x0

    goto :goto_66

    .line 29898
    :cond_69
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/bQ;->A00()I

    move-result v0

    int-to-long v4, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x1c

    if-eq v3, v0, :cond_81

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_81
    sget-object v6, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v3, "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const-string v3, "g5URFCrsk"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_92

    :goto_91
    return v7

    :cond_92
    const/4 v7, 0x0

    goto :goto_91
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b1;
        }
    .end annotation

    .line 29899
    move-object/from16 v8, p0

    move-object v8, v8

    const/4 v7, 0x0

    .line 29900
    .local v0, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29901
    .local v3, "startTime":J
    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bQ;->A01()I

    move-result v6

    .line 29902
    .local v5, "maxRetries":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bQ;->A03()I

    move-result v3

    int-to-long v9, v3

    .line 29903
    .local v6, "throttleTimeMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/b5;->A04()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bQ;->A04()I

    move-result v3

    int-to-long v3, v3

    add-long v16, v16, v3

    .line 29904
    .end local v0    # "numTries":I
    .local v3, "numTries":I
    .local v8, "endTimeMillis":J
    .local v21, "startTime":J
    :goto_2a
    const-wide/16 v3, 0x0

    sget-object v11, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v11, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v5, 0x1c

    if-eq v11, v5, :cond_3f

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v12, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v11, "uw7CndVwumsNWx3tR5uVNB4kWYqq"

    const/4 v5, 0x5

    aput-object v11, v12, v5

    if-ge v7, v6, :cond_17c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v5, v16, v11

    if-lez v5, :cond_17c

    .line 29905
    :try_start_50
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/au;

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/au;->ABH()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 29906
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x25

    const/4 v11, 0x4

    const/16 v5, 0x73

    invoke-static {v12, v11, v5}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x38

    const/16 v11, 0x9

    const/16 v5, 0x46

    invoke-static {v12, v11, v5}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 29907
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/b5;->A07()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29908
    :cond_8d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29909
    invoke-direct {v8, v2}, Lcom/facebook/ads/redexgen/X/AT;->A01(Lcom/facebook/ads/redexgen/X/b5;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v15

    .line 29910
    .local v0, "res":Lcom/facebook/ads/redexgen/X/bw;
    if-eqz v15, :cond_cd

    .line 29911
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    .line 29912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v0

    .line 29913
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/bw;->A7c()[B

    move-result-object v11

    array-length v11, v11

    int-to-long v13, v11

    .line 29914
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    if-nez v11, :cond_ab

    move-wide v11, v3

    goto :goto_af

    :cond_ab
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    array-length v11, v11

    int-to-long v11, v11

    .line 29915
    :goto_af
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/bw;->A9p()I

    move-result v27

    .line 29916
    const/16 v28, 0x0

    move-wide/from16 v23, v13

    move-wide/from16 v25, v11

    move-object/from16 v18, v5

    move-wide/from16 v19, v0

    invoke-interface/range {v18 .. v28}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V

    goto/16 :goto_160
    :try_end_c2
    .catch Lcom/facebook/ads/redexgen/X/b1; {:try_start_50 .. :try_end_c2} :catch_c2

    .line 29917
    .end local v0    # "res":Lcom/facebook/ads/redexgen/X/bw;
    :catch_c2
    move-exception v5

    .line 29918
    .end local v21    # "startTime":J
    .local v12, "startTime":J
    .local v4, "e":Lcom/facebook/ads/redexgen/X/b1;
    invoke-direct {v8, v5, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/AT;->A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/b5;)Z

    move-result v11

    if-eqz v11, :cond_d1

    add-int/lit8 v11, v6, -0x1

    if-ge v7, v11, :cond_d1

    .line 29919
    .end local v12    # "startTime":J
    .restart local v21    # "startTime":J
    :cond_cd
    :goto_cd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2a

    .line 29920
    :cond_d1
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/redexgen/X/ay;

    sget-object v12, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v11, v12, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v11, 0x1c

    if-eq v12, v11, :cond_f6

    sget-object v13, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v12, "RTCgSwX4E1qAS9DeUF79c1CzYGzjCcSq"

    const/4 v11, 0x4

    aput-object v12, v13, v11

    invoke-interface {v14, v5}, Lcom/facebook/ads/redexgen/X/ay;->AEu(Lcom/facebook/ads/redexgen/X/b1;)Z

    move-result v11

    .line 29921
    .local v14, "isRecoverable":Z
    if-eqz v11, :cond_108

    :goto_ed
    add-int/lit8 v11, v6, -0x1

    if-ge v7, v11, :cond_108

    .line 29922
    cmp-long v11, v9, v3

    if-lez v11, :cond_cd

    goto :goto_104

    :cond_f6
    sget-object v13, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v12, "QCV1DKlppK5B8d9XgS0nl0pavHf"

    const/4 v11, 0x4

    aput-object v12, v13, v11

    invoke-interface {v14, v5}, Lcom/facebook/ads/redexgen/X/ay;->AEu(Lcom/facebook/ads/redexgen/X/b1;)Z

    move-result v11

    .line 29923
    .local v14, "isRecoverable":Z
    if-eqz v11, :cond_108

    goto :goto_ed

    .line 29924
    :goto_104
    :try_start_104
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_cd
    :try_end_108
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_108} :catch_161

    .line 29925
    .end local v21    # "startTime":J
    .restart local v4    # "e":Lcom/facebook/ads/redexgen/X/b1;
    .restart local v12    # "startTime":J
    .restart local v14    # "isRecoverable":Z
    :cond_108
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/b1;->A00()Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v9

    .line 29926
    .local v0, "response":Lcom/facebook/ads/redexgen/X/bw;
    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    .line 29927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    .line 29928
    if-eqz v9, :cond_11b

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/bw;->A7c()[B

    move-result-object v3

    if-nez v3, :cond_13b

    .line 29929
    :cond_11b
    const-wide/16 v3, 0x0

    .line 29930
    :goto_11d
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    if-nez v6, :cond_136

    const-wide/16 v6, 0x0

    .line 29931
    :goto_123
    if-nez v9, :cond_131

    const/16 v17, 0x0

    .line 29932
    :goto_127
    move-object v8, v8

    move-wide v9, v0

    move-wide v13, v3

    move-wide v15, v6

    move-object/from16 v18, v5

    invoke-interface/range {v8 .. v18}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V

    .line 29933
    throw v5

    .line 29934
    :cond_131
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/bw;->A9p()I

    move-result v17

    goto :goto_127

    .line 29935
    :cond_136
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    array-length v2, v2

    int-to-long v6, v2

    goto :goto_123

    .line 29936
    :cond_13b
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/bw;->A7c()[B

    move-result-object v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v6, v3

    const/4 v3, 0x6

    aget-object v3, v6, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_39

    sget-object v6, Lcom/facebook/ads/redexgen/X/AT;->A08:[Ljava/lang/String;

    const-string v4, "kZCGiI5zGihRv0GXktBIsysHbk9bX5"

    const/4 v3, 0x3

    aput-object v4, v6, v3

    const-string v4, "FynZg164G"

    const/4 v3, 0x6

    aput-object v4, v6, v3

    array-length v3, v7

    int-to-long v3, v3

    goto :goto_11d

    .line 29937
    :goto_160
    return-object v15

    .line 29938
    :catch_161
    move-exception v17

    .line 29939
    .local p15, "ie":Ljava/lang/InterruptedException;
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    .line 29940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    .line 29941
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    if-nez v6, :cond_177

    .line 29942
    :goto_16d
    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-wide v14, v3

    move-wide v8, v0

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V

    .line 29943
    throw v5

    .line 29944
    :cond_177
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    array-length v2, v2

    int-to-long v3, v2

    goto :goto_16d

    .line 29945
    .end local v0    # "response":Lcom/facebook/ads/redexgen/X/bw;
    .end local v4    # "e":Lcom/facebook/ads/redexgen/X/b1;
    .end local v12    # "startTime":J
    .end local v14    # "isRecoverable":Z
    .restart local v21    # "startTime":J
    :cond_17c
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/le;

    .line 29946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    .line 29947
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    if-nez v3, :cond_1a5

    const-wide/16 v2, 0x0

    :goto_189
    const/16 v6, 0x52

    const/16 v5, 0x23

    const/16 v4, 0x1b

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 29948
    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-wide v14, v2

    move-object/from16 v17, v4

    move-wide v8, v0

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/le;->ACc(JJJJILjava/lang/Exception;)V

    .line 29949
    const/4 v0, 0x0

    return-object v0

    .line 29950
    :cond_1a5
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/b5;->A04:[B

    array-length v2, v2

    int-to-long v2, v2

    goto :goto_189
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/bU;
    .registers 2

    .line 29951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    return-object v0
.end method

.method public final AI9(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/bw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/bw;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29952
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/az;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/az;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    .line 29953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A00()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v0

    .line 29954
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/az;Lcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v0

    return-object v0
.end method

.method public final AIA(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/bw;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    .line 29956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A00()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v3

    .line 29957
    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/AT;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bQ;)Lcom/facebook/ads/redexgen/X/bw;

    move-result-object v0

    return-object v0
.end method

.method public final AIB(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bq;)V
    .registers 10

    .line 29958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/bU;

    .line 29959
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bU;->A00()Lcom/facebook/ads/redexgen/X/bQ;

    move-result-object v5

    .line 29960
    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AT;->A07(III)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AT;->A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/bq;Lcom/facebook/ads/redexgen/X/bQ;)V

    .line 29961
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13354u (com.facebook.ads.redexgen.X.4u)
.class public final Lcom/facebook/ads/redexgen/X/4u;
.super Lcom/facebook/ads/redexgen/X/AY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/bU;Lcom/facebook/ads/redexgen/X/le;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/au;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 11414
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4u;->A00:Lcom/facebook/ads/redexgen/X/AT;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Lcom/facebook/ads/redexgen/X/au;Z)V

    return-void
.end method
