###### Class com.facebook.ads.redexgen.X.SurfaceHolderCallbackC1907Se (com.facebook.ads.redexgen.X.Se)
.class public final Lcom/facebook/ads/redexgen/X/Se;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/YC;
.implements Lcom/facebook/ads/redexgen/X/Qe;
.implements Lcom/facebook/ads/redexgen/X/WE;
.implements Lcom/facebook/ads/redexgen/X/TS;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/93;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1246
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "exxbpzcvIz96IPgBJXqt6pp5itorUF0v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vaPUn1aNMiZ346cWCU2pc8maO9eEgJtl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Zerdoj33HxDipZN8U41vAIMmtEo1dxqV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Hd0EHkxqhfRSUHQCJm03k00NKThSKgEe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y3XMdSyeNt7JpS9ShLboIeCRpeyuEUYI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8w3zvrsb6gjp4AAyphlBNpXR3J0KmDiy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/93;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 69882
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/Pk;)V
    .registers 3

    .line 69883
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Se;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    return-void
.end method


# virtual methods
.method public final ADw(Ljava/lang/String;JJ)V
    .registers 14

    .line 69884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qe;

    .line 69885
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Qe;->ADw(Ljava/lang/String;JJ)V

    .line 69886
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_a

    .line 69887
    :cond_1d
    return-void
.end method

.method public final ADx(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 4

    .line 69888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qe;

    .line 69889
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qe;->ADx(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 69890
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_a

    .line 69891
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/93;->A03(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;

    .line 69892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/93;->A05(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;

    .line 69893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A00(Lcom/facebook/ads/redexgen/X/93;I)I

    .line 69894
    return-void
.end method

.method public final ADy(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 4

    .line 69895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/93;->A05(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;

    .line 69896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qe;

    .line 69897
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qe;->ADy(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 69898
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_f

    .line 69899
    :cond_1f
    return-void
.end method

.method public final ADz(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 7

    .line 69900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/93;->A03(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;

    .line 69901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qe;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_30

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69902
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const-string v1, "QeMGbFFoOT7FNJ57RKOwk9Jq4PSH3GCD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/Qe;->ADz(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 69903
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_f

    .line 69904
    :cond_3b
    return-void
.end method

.method public final synthetic AE0(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V
    .registers 3

    return-void
.end method

.method public final synthetic AE1(J)V
    .registers 3

    return-void
.end method

.method public final synthetic AE2(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public final AE5(IJJ)V
    .registers 14

    .line 69905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0C(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qe;

    .line 69906
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Qe;->AE5(IJJ)V

    .line 69907
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/Qe;
    goto :goto_a

    .line 69908
    :cond_1d
    return-void
.end method

.method public final synthetic AEV(IJ)V
    .registers 4

    return-void
.end method

.method public final AEa(Lcom/facebook/ads/redexgen/X/Tf;)V
    .registers 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 69909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A09(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LJ;

    .line 69910
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/LJ;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LJ;->AEa(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 69911
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/LJ;
    goto :goto_a

    .line 69912
    :cond_1a
    return-void
.end method

.method public final AEb(Ljava/util/List;)V
    .registers 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Th;",
            ">;)V"
        }
    .end annotation

    .line 69913
    .local v3, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A09(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LJ;

    .line 69914
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/LJ;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LJ;->AEb(Ljava/util/List;)V

    .line 69915
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/LJ;
    goto :goto_a

    .line 69916
    :cond_3a
    return-void

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEn(IJ)V
    .registers 6

    .line 69917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69918
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YC;->AEn(IJ)V

    .line 69919
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_a

    .line 69920
    :cond_1a
    return-void
.end method

.method public final AFx(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .registers 9

    .line 69921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A08(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/TS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69922
    .local v1, "metadataOutput":Lcom/facebook/ads/redexgen/X/TS;
    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const-string v1, "SvUpNKWuGEySYhNFFwIH5w5ikbhc16eE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TS;->AFx(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 69923
    .end local v1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/TS;
    goto :goto_a

    .line 69924
    :cond_36
    return-void
.end method

.method public final AGm(Ljava/lang/Object;J)V
    .registers 6

    .line 69925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A01(Lcom/facebook/ads/redexgen/X/93;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_1c

    .line 69926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0B(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69927
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/Sd;
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/Sd;
    goto :goto_12

    .line 69928
    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69929
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YC;->AGm(Ljava/lang/Object;J)V

    .line 69930
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_26

    .line 69931
    :cond_36
    return-void
.end method

.method public final synthetic AH5(Z)V
    .registers 2

    return-void
.end method

.method public final AHX(Ljava/lang/String;JJ)V
    .registers 14

    .line 69932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/YC;

    .line 69933
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/YC;->AHX(Ljava/lang/String;JJ)V

    .line 69934
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_a

    .line 69935
    :cond_1d
    return-void
.end method

.method public final AHY(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 4

    .line 69936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69937
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHY(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 69938
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_a

    .line 69939
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/93;->A02(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;

    .line 69940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/93;->A04(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;

    .line 69941
    return-void
.end method

.method public final AHZ(Lcom/facebook/ads/redexgen/X/O7;)V
    .registers 7

    .line 69942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/93;->A04(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/O7;)Lcom/facebook/ads/redexgen/X/O7;

    .line 69943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Se;->A01:[Ljava/lang/String;

    const-string v1, "FRbb1fiCbWCVoQ1qe3xdf1r3l5tYMl7U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69944
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHZ(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 69945
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_f

    .line 69946
    :cond_3e
    return-void
.end method

.method public final AHe(Lcom/facebook/ads/redexgen/X/VC;)V
    .registers 4

    .line 69947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/93;->A02(Lcom/facebook/ads/redexgen/X/93;Lcom/facebook/ads/redexgen/X/VC;)Lcom/facebook/ads/redexgen/X/VC;

    .line 69948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69949
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHe(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 69950
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_f

    .line 69951
    :cond_1f
    return-void
.end method

.method public final synthetic AHf(Lcom/facebook/ads/redexgen/X/VC;Lcom/facebook/ads/redexgen/X/OA;)V
    .registers 3

    return-void
.end method

.method public final AHl(Lcom/facebook/ads/redexgen/X/Tp;)V
    .registers 8

    .line 69952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0B(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/NA;

    .line 69953
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/NA;
    iget v3, p1, Lcom/facebook/ads/redexgen/X/Tp;->A03:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/Tp;->A01:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/Tp;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Tp;->A00:F

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->AHk(IIIF)V

    .line 69954
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/NA;
    goto :goto_a

    .line 69955
    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/93;->A0A(Lcom/facebook/ads/redexgen/X/93;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YC;

    .line 69956
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/YC;->AHl(Lcom/facebook/ads/redexgen/X/Tp;)V

    .line 69957
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/YC;
    goto :goto_2c

    .line 69958
    :cond_3c
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .line 69959
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0G(Lcom/facebook/ads/redexgen/X/93;Landroid/view/Surface;Z)V

    .line 69960
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    .line 69961
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0G(Lcom/facebook/ads/redexgen/X/93;Landroid/view/Surface;Z)V

    .line 69962
    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 69963
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 69964
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 69965
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 69966
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0G(Lcom/facebook/ads/redexgen/X/93;Landroid/view/Surface;Z)V

    .line 69967
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 69968
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/93;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/93;->A0G(Lcom/facebook/ads/redexgen/X/93;Landroid/view/Surface;Z)V

    .line 69969
    return-void
.end method
