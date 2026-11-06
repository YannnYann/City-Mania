###### Class com.facebook.ads.redexgen.X.YQ (com.facebook.ads.redexgen.X.YQ)
.class public abstract Lcom/facebook/ads/redexgen/X/YQ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final A01:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1743
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Ljava/lang/String;

    .line 1744
    sput-object v0, Lcom/facebook/ads/redexgen/X/YQ;->A01:[Ljava/lang/Object;

    return-void
.end method

.method public static A00(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 77686
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 77687
    return-object p0

    .line 77688
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
