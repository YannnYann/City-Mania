###### Class com.ironsource.mediationsdk.ISBannerSize (com.ironsource.mediationsdk.ISBannerSize)
.class public Lcom/ironsource/mediationsdk/ISBannerSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

.field public static final SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

.field protected static final f:Lcom/ironsource/mediationsdk/ISBannerSize;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Z

.field e:Lcom/ironsource/Y7;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x32

    .line 1
    const-string v1, "BANNER"

    const/16 v2, 0x140

    invoke-static {v1, v2, v0}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 3
    const-string v0, "LARGE"

    const/16 v1, 0x5a

    invoke-static {v0, v2, v1}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LARGE:Lcom/ironsource/mediationsdk/ISBannerSize;

    const/16 v0, 0x12c

    const/16 v1, 0xfa

    .line 5
    const-string v2, "RECTANGLE"

    invoke-static {v2, v0, v1}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->RECTANGLE:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 6
    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->f:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 8
    const-string v0, "SMART"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/j;->a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->c:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:I

    .line 5
    iput p3, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->b:I

    .line 6
    new-instance p1, Lcom/ironsource/Y7;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/Y7;-><init>(II)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    return-void
.end method

.method public static getMaximalAdaptiveHeight(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/ironsource/mediationsdk/j;->b(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/ironsource/Y7;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:I

    iget v1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->b:I

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/j;->a(Lcom/ironsource/Y7;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    :cond_c
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:I

    return v0
.end method

.method public isAdaptive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->d:Z

    return v0
.end method

.method public isSmart()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->c:Ljava/lang/String;

    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAdaptive(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->d:Z

    return-void
.end method

.method public toLevelPlayAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->e:Lcom/ironsource/Y7;

    invoke-virtual {v0}, Lcom/ironsource/Y7;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/mediation/LevelPlayAdSize;->createAdaptiveAdSize(Landroid/content/Context;Ljava/lang/Integer;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1

    .line 5
    :cond_15
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_74

    goto :goto_5b

    :sswitch_25
    const-string v1, "CUSTOM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_5b

    :cond_2e
    const/4 v0, 0x4

    goto :goto_5b

    :sswitch_30
    const-string v1, "BANNER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_5b

    :cond_39
    const/4 v0, 0x3

    goto :goto_5b

    :sswitch_3b
    const-string v1, "LARGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_5b

    :cond_44
    const/4 v0, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v1, "MEDIUM_RECTANGLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_5b

    :cond_4f
    const/4 v0, 0x1

    goto :goto_5b

    :sswitch_51
    const-string v1, "RECTANGLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    packed-switch v0, :pswitch_data_8a

    .line 17
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 18
    :pswitch_61
    iget p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:I

    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->b:I

    invoke-static {p1, v0}, Lcom/unity3d/mediation/LevelPlayAdSize;->createCustomSize(II)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_6a
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->BANNER:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 21
    :pswitch_6d
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->LARGE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    .line 24
    :pswitch_70
    sget-object p1, Lcom/unity3d/mediation/LevelPlayAdSize;->MEDIUM_RECTANGLE:Lcom/unity3d/mediation/LevelPlayAdSize;

    return-object p1

    nop

    :sswitch_data_74
    .sparse-switch
        -0x171242b1 -> :sswitch_51
        -0x5c1d2fb -> :sswitch_46
        0x44dc31b -> :sswitch_3b
        0x7458732c -> :sswitch_30
        0x77297f71 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_70
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_61
    .end packed-switch
.end method
