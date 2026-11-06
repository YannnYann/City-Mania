###### Class com.vungle.ads.fpd.LiftoffGender (com.vungle.ads.fpd.LiftoffGender)
.class public final enum Lcom/vungle/ads/fpd/LiftoffGender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/fpd/LiftoffGender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/vungle/ads/fpd/LiftoffGender;

.field public static final enum MALE:Lcom/vungle/ads/fpd/LiftoffGender;

.field public static final synthetic b:[Lcom/vungle/ads/fpd/LiftoffGender;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/LiftoffGender;

    const-string v1, "FEMALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/vungle/ads/fpd/LiftoffGender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vungle/ads/fpd/LiftoffGender;->FEMALE:Lcom/vungle/ads/fpd/LiftoffGender;

    .line 2
    new-instance v1, Lcom/vungle/ads/fpd/LiftoffGender;

    const-string v2, "MALE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/vungle/ads/fpd/LiftoffGender;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vungle/ads/fpd/LiftoffGender;->MALE:Lcom/vungle/ads/fpd/LiftoffGender;

    .line 3
    filled-new-array {v0, v1}, [Lcom/vungle/ads/fpd/LiftoffGender;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/vungle/ads/fpd/LiftoffGender;->b:[Lcom/vungle/ads/fpd/LiftoffGender;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vungle/ads/fpd/LiftoffGender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/fpd/LiftoffGender;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/fpd/LiftoffGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/fpd/LiftoffGender;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/fpd/LiftoffGender;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/fpd/LiftoffGender;->b:[Lcom/vungle/ads/fpd/LiftoffGender;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/fpd/LiftoffGender;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/fpd/LiftoffGender;->a:I

    return v0
.end method
