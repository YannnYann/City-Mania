###### Class com.facebook.ads.redexgen.X.C3084qB (com.facebook.ads.redexgen.X.qB)
.class public final Lcom/facebook/ads/redexgen/X/qB;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExecutionThread"
.end annotation


# instance fields
.field public A00:Z

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/qC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qC;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 108678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qB;->A00:Z

    .line 108680
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/qB;->start()V

    .line 108681
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .registers 2

    monitor-enter p0

    .line 108682
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A02()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 108683
    monitor-exit p0

    return-void

    .line 108684
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108685
    monitor-enter p0

    .line 108686
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qB;->A00:Z

    .line 108687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A02()V

    .line 108688
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_19

    .line 108689
    :try_start_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/qB;->join()V

    goto :goto_18
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_12} :catch_12

    .line 108690
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_12
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 108691
    :goto_18
    return-void

    .line 108692
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    .line 108693
    .local v0, "this":Lcom/facebook/ads/redexgen/X/qB;
    :cond_8
    const/4 v4, 0x0

    :try_start_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A04()V

    .line 108694
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_6f
    .catchall {:try_start_9 .. :try_end_15} :catchall_58

    .line 108695
    :try_start_15
    monitor-enter v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_55

    .line 108696
    :try_start_16
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/qB;->A00:Z

    .line 108697
    .local v3, "exit":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A05()Z

    move-result v0

    .line 108698
    .local v4, "runNow":Z
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_4f

    .line 108699
    :try_start_23
    monitor-exit v2

    .line 108700
    if-eqz v1, :cond_27

    goto :goto_35

    .line 108701
    :cond_27
    if-eqz v0, :cond_8

    goto :goto_2c
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2a

    .line 108702
    :catchall_2a
    move-exception v0

    goto :goto_56

    .line 108703
    :goto_2c
    :try_start_2c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A02(Lcom/facebook/ads/redexgen/X/qC;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_6f
    .catchall {:try_start_2c .. :try_end_35} :catchall_4d

    .line 108704
    .end local v3    # "exit":Z
    .end local v4    # "runNow":Z
    :goto_35
    :try_start_35
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    monitor-enter v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_88

    .line 108705
    :try_start_38
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A03()V

    .line 108706
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/qC;->A01(Lcom/facebook/ads/redexgen/X/qC;Lcom/facebook/ads/redexgen/X/qB;)Lcom/facebook/ads/redexgen/X/qB;

    .line 108707
    monitor-exit v1

    goto :goto_81
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    :goto_49
    :try_start_49
    monitor-exit v1

    goto :goto_87
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4b

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :catchall_4b
    move-exception v0

    goto :goto_49

    .line 108708
    :catchall_4d
    move-exception v2

    goto :goto_59

    .line 108709
    :catchall_4f
    move-exception v0

    :goto_50
    :try_start_50
    monitor-exit v3

    goto :goto_54
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :catchall_52
    move-exception v0

    goto :goto_50

    :goto_54
    :try_start_54
    throw v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 108710
    :catchall_55
    move-exception v0

    :goto_56
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :try_start_57
    throw v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_6f
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 108711
    :catchall_58
    move-exception v2

    :goto_59
    :try_start_59
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    monitor-enter v1
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_88

    .line 108712
    :try_start_5c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A03()V

    .line 108713
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/qC;->A01(Lcom/facebook/ads/redexgen/X/qC;Lcom/facebook/ads/redexgen/X/qB;)Lcom/facebook/ads/redexgen/X/qB;

    .line 108714
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_6c

    .line 108715
    :try_start_6b
    throw v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_88

    .line 108716
    .end local v0
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0

    .line 108717
    :catch_6f
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    monitor-enter v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_88

    .line 108718
    :try_start_72
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A00(Lcom/facebook/ads/redexgen/X/qC;)Lcom/facebook/ads/redexgen/X/qA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qA;->A03()V

    .line 108719
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/qB;->A01:Lcom/facebook/ads/redexgen/X/qC;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/qC;->A01(Lcom/facebook/ads/redexgen/X/qC;Lcom/facebook/ads/redexgen/X/qB;)Lcom/facebook/ads/redexgen/X/qB;

    .line 108720
    monitor-exit v1

    .line 108721
    :goto_81
    return-void
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_82

    .line 108722
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :catchall_82
    move-exception v0

    :goto_83
    :try_start_83
    monitor-exit v1

    goto :goto_87
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_85

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/qB;
    :catchall_85
    move-exception v0

    goto :goto_83

    :goto_87
    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 108723
    :catchall_88
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
