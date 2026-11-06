###### Class com.badlogic.gdx.pay.OfferType (com.badlogic.gdx.pay.OfferType)
.class public final enum Lcom/badlogic/gdx/pay/OfferType;
.super Ljava/lang/Enum;
.source "OfferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/pay/OfferType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/pay/OfferType;

.field public static final enum CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

.field public static final enum ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

.field public static final enum SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/pay/OfferType;
    .registers 3

    .line 21
    sget-object v0, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    sget-object v1, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    sget-object v2, Lcom/badlogic/gdx/pay/OfferType;->SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

    filled-new-array {v0, v1, v2}, [Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/badlogic/gdx/pay/OfferType;

    const-string v1, "CONSUMABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/pay/OfferType;

    const-string v1, "ENTITLEMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/pay/OfferType;

    const-string v1, "SUBSCRIPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/OfferType;->SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

    .line 21
    invoke-static {}, Lcom/badlogic/gdx/pay/OfferType;->$values()[Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/pay/OfferType;->$VALUES:[Lcom/badlogic/gdx/pay/OfferType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/pay/OfferType;
    .registers 2

    .line 21
    const-class v0, Lcom/badlogic/gdx/pay/OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/pay/OfferType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/pay/OfferType;
    .registers 1

    .line 21
    sget-object v0, Lcom/badlogic/gdx/pay/OfferType;->$VALUES:[Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/pay/OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/pay/OfferType;

    return-object v0
.end method
