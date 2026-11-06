###### Class com.facebook.ads.redexgen.X.C5M (com.facebook.ads.redexgen.X.5M)
.class public final Lcom/facebook/ads/redexgen/X/5M;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/BM;

.field public final A02:Lcom/facebook/ads/redexgen/X/BG;

.field public final A03:Lcom/facebook/ads/redexgen/X/BE;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 181
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1cdJmqZo5JmjBSz3V6iIBc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b5mtsG63LfUTmVo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v7pUKp70YLsspQnihAQa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8RT4D0PvYsYuyNKYG0J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LG3ePim6beoWq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NyBn7Ghd81GFryl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6ZzG2MB7DBeQL6nfhWDwO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j693JmATHJpRsHF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5M;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5M;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 3

    .line 11750
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BP;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 11751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A00:Ljava/lang/ref/WeakReference;

    .line 11752
    new-instance v0, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5P;-><init>(Lcom/facebook/ads/redexgen/X/5M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A01:Lcom/facebook/ads/redexgen/X/BM;

    .line 11753
    new-instance v0, Lcom/facebook/ads/redexgen/X/5O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5O;-><init>(Lcom/facebook/ads/redexgen/X/5M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A02:Lcom/facebook/ads/redexgen/X/BG;

    .line 11754
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Lcom/facebook/ads/redexgen/X/5M;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A03:Lcom/facebook/ads/redexgen/X/BE;

    .line 11755
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5M;)Lcom/facebook/ads/redexgen/X/Be;
    .registers 1

    .line 11756
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5M;)Lcom/facebook/ads/redexgen/X/Be;
    .registers 1

    .line 11757
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object p0

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/5M;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/5M;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 11758
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5M;->A00:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/5M;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 11759
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5M;->A00:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static A05()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/5M;->A04:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x45t
        0x51t
        0x40t
        0x4dt
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .registers 5

    .line 11760
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BP;->A07()V

    .line 11761
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 11762
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    .line 11763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A03:Lcom/facebook/ads/redexgen/X/BE;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A01:Lcom/facebook/ads/redexgen/X/BM;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A02:Lcom/facebook/ads/redexgen/X/BG;

    aput-object v0, v2, v1

    .line 11764
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A03([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 11765
    :cond_26
    return-void
.end method

.method public final A08()V
    .registers 5

    .line 11766
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 11767
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->getVideoView()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    .line 11768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A02:Lcom/facebook/ads/redexgen/X/BG;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A01:Lcom/facebook/ads/redexgen/X/BM;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A03:Lcom/facebook/ads/redexgen/X/BE;

    aput-object v0, v2, v1

    .line 11769
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A04([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 11770
    :cond_23
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BP;->A08()V

    .line 11771
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 5

    .line 11772
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5M;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5M;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 11773
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A00:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_34

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 11774
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BP;->onDetachedFromWindow()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/5M;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11775
    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5M;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_1b

    .line 11776
    :cond_3d
    sget-object v2, Lcom/facebook/ads/redexgen/X/5M;->A05:[Ljava/lang/String;

    const-string v1, "22FJBjB3Y4dWSYUEkMs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C5O (com.facebook.ads.redexgen.X.5O)
.class public final Lcom/facebook/ads/redexgen/X/5O;
.super Lcom/facebook/ads/redexgen/X/BG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5M;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 182
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3T8L8cxvDKNdHoEU8ndZ6FAxHol6AQmj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T9d9jeRvA6TPkjlyE6ANkunwJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZZYtC1qzWr9Z64iPtzSxbZEtAt5IIjlM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LskUfs4Yi749bFjDIqQWoA2BC0G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rATJhvtsPzynSvx3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "X5OC7Y9E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WElhmvPz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "o0UdQ4xy8VrknzG9L7EyZnB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5O;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5O;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5M;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11789
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5O;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BG;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/5O;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/4 v0, 0x5

    new-array v3, v0, [B

    fill-array-data v3, :array_24

    sget-object v1, Lcom/facebook/ads/redexgen/X/5O;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/5O;->A02:[Ljava/lang/String;

    const-string v1, "gxAB8m8awSLzC5VQ45NFPzppUrTsIZFp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/5O;->A01:[B

    return-void

    nop

    :array_24
    .array-data 1
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/5W;)V
    .registers 6

    .line 11790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5O;->A00:Lcom/facebook/ads/redexgen/X/5M;

    .line 11791
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5M;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11792
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 11793
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5O;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 11794
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5O;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5M;->A03(Lcom/facebook/ads/redexgen/X/5M;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    sget-object v2, Lcom/facebook/ads/redexgen/X/5O;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_49

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5O;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5M;->A03(Lcom/facebook/ads/redexgen/X/5M;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_21

    .line 11795
    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/5O;->A02:[Ljava/lang/String;

    const-string v1, "auSH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

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

    .line 11796
    check-cast p1, Lcom/facebook/ads/redexgen/X/5W;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5O;->A02(Lcom/facebook/ads/redexgen/X/5W;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C5P (com.facebook.ads.redexgen.X.5P)
.class public final Lcom/facebook/ads/redexgen/X/5P;
.super Lcom/facebook/ads/redexgen/X/BM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5M;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5P;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5M;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11797
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BM;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/5P;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/5P;->A01:[B

    return-void

    nop

    :array_a
    .array-data 1
        -0x1at
        -0x6t
        -0x17t
        -0x12t
        -0xct
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/5Y;)V
    .registers 6

    .line 11798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/5M;

    .line 11799
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5M;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11800
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 11801
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 11802
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5M;->A03(Lcom/facebook/ads/redexgen/X/5M;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 11803
    return-void

    .line 11804
    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5M;->A03(Lcom/facebook/ads/redexgen/X/5M;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_21
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

    .line 11805
    check-cast p1, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5P;->A02(Lcom/facebook/ads/redexgen/X/5Y;)V

    return-void
.end method
