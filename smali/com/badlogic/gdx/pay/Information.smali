###### Class com.badlogic.gdx.pay.Information (com.badlogic.gdx.pay.Information)
.class public final Lcom/badlogic/gdx/pay/Information;
.super Ljava/lang/Object;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/pay/Information$Builder;
    }
.end annotation


# static fields
.field public static final UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;


# instance fields
.field public freeTrialPeriod:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

.field public final localDescription:Ljava/lang/String;

.field public final localName:Ljava/lang/String;

.field public final localPricing:Ljava/lang/String;

.field public priceAsDouble:Ljava/lang/Double;

.field public priceCurrencyCode:Ljava/lang/String;

.field public priceInCents:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/badlogic/gdx/pay/Information;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/pay/Information;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/pay/Information;->UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/pay/Information$Builder;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$000(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$100(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$200(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$300(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->priceInCents:Ljava/lang/Integer;

    .line 47
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$400(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->priceAsDouble:Ljava/lang/Double;

    .line 48
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$500(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->priceCurrencyCode:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->access$600(Lcom/badlogic/gdx/pay/Information$Builder;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information;->freeTrialPeriod:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/badlogic/gdx/pay/Information$1;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/pay/Information;-><init>(Lcom/badlogic/gdx/pay/Information$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 53
    new-instance v0, Lcom/badlogic/gdx/pay/Information$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;-><init>(Lcom/badlogic/gdx/pay/Information$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/badlogic/gdx/pay/Information;

    if-eq v3, v2, :cond_10

    goto :goto_46

    .line 134
    :cond_10
    check-cast p1, Lcom/badlogic/gdx/pay/Information;

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    .line 138
    :cond_24
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v3, p1, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_35

    :cond_31
    iget-object v2, p1, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    if-eqz v2, :cond_36

    :goto_35
    return v1

    .line 140
    :cond_36
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    iget-object p1, p1, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    if-eqz v2, :cond_43

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_43
    if-nez p1, :cond_46

    :cond_45
    return v0

    :cond_46
    :goto_46
    return v1
.end method

.method public getLocalDescription()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPricing()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInCents()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->priceInCents:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Information{localName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Information;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localPricing=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->localPricing:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.pay.Information.AnonymousClass1 (com.badlogic.gdx.pay.Information$1)
.class public synthetic Lcom/badlogic/gdx/pay/Information$1;
.super Ljava/lang/Object;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.badlogic.gdx.pay.Information.Builder (com.badlogic.gdx.pay.Information$Builder)
.class public final Lcom/badlogic/gdx/pay/Information$Builder;
.super Ljava/lang/Object;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public freeTrialPeriod:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

.field public localDescription:Ljava/lang/String;

.field public localName:Ljava/lang/String;

.field public localPricing:Ljava/lang/String;

.field public priceAsDouble:Ljava/lang/Double;

.field public priceCurrencyCode:Ljava/lang/String;

.field public priceInCents:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/Information$1;)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/badlogic/gdx/pay/Information$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceInCents:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Double;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceAsDouble:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/badlogic/gdx/pay/Information$Builder;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->freeTrialPeriod:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/badlogic/gdx/pay/Information;
    .registers 3

    .line 219
    new-instance v0, Lcom/badlogic/gdx/pay/Information;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/pay/Information;-><init>(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/badlogic/gdx/pay/Information$1;)V

    return-object v0
.end method

.method public freeTrialPeriod(Lcom/badlogic/gdx/pay/FreeTrialPeriod;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->freeTrialPeriod:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-object p0
.end method

.method public localDescription(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localDescription:Ljava/lang/String;

    return-object p0
.end method

.method public localName(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localName:Ljava/lang/String;

    return-object p0
.end method

.method public localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing:Ljava/lang/String;

    return-object p0
.end method

.method public priceAsDouble(Ljava/lang/Double;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceAsDouble:Ljava/lang/Double;

    return-object p0
.end method

.method public priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public priceInCents(Ljava/lang/Integer;)Lcom/badlogic/gdx/pay/Information$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->priceInCents:Ljava/lang/Integer;

    return-object p0
.end method
