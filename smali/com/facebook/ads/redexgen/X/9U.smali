###### Class com.facebook.ads.redexgen.X.C9U (com.facebook.ads.redexgen.X.9U)
.class public final Lcom/facebook/ads/redexgen/X/9U;
.super Lcom/facebook/ads/redexgen/X/VY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VX;->A01(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/9U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/VY<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Ljava/util/Set;

.field public final synthetic A01:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$set1",
            "val$set2"
        }
    .end annotation

    .line 28760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9U;->A01:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VY;-><init>(Lcom/facebook/ads/redexgen/X/9U;)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/VV;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/VV<",
            "TE;>;"
        }
    .end annotation

    .line 28761
    new-instance v0, Lcom/facebook/ads/redexgen/X/4S;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4S;-><init>(Lcom/facebook/ads/redexgen/X/9U;)V

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 28762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A01:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method public final isEmpty()Z
    .registers 2

    .line 28763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 28764
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9U;->A00()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 5

    .line 28765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 28766
    .local v0, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28767
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 28768
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 28769
    :cond_21
    return v3
.end method

###### Class com.facebook.ads.redexgen.X.C4S (com.facebook.ads.redexgen.X.4S)
.class public final Lcom/facebook/ads/redexgen/X/4S;
.super Lcom/facebook/ads/redexgen/X/A2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9U;->A00()Lcom/facebook/ads/redexgen/X/VV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/A2<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/9U;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 168
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FSOmyklUFzaVC7xQeTjgmsDLg0Wa2djw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9DrbO6PK2QrWKu6SMrev9ehpZiSi6Gyp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "px5GZ9QyI7wiAQvvBGHrLXVVR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "u8im9YcQsr2F5ECSzEvv89hDw18EfLoB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9Sab1Za9aUHadY4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "st7nw1WmrXLuVswANuFTvQLD4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ze1xLXuve8mZjjBl8rZSCrUWt1nJJNXH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MN8RZUed2G2kBKaqghVLJ1WnfOfOVvbP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4S;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9U;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 10966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Lcom/facebook/ads/redexgen/X/9U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/A2;-><init>()V

    .line 10967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Ljava/util/Iterator;

    .line 10968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9U;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Ljava/util/Iterator;

    .line 10969
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 10970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10972
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4S;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/4S;->A03:[Ljava/lang/String;

    const-string v1, "xbo8KN7mzq5u4Y8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "NtJkMvseN2BIapvvPtYvIs9SDbhJaD5Q"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_42

    .line 10973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10974
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4S;->A02:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9U;->A00:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 10975
    return-object v1

    .line 10976
    :cond_42
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A2;->A01()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
