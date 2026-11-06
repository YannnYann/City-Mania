###### Class com.badlogic.gdx.pay.Transaction (com.badlogic.gdx.pay.Transaction)
.class public final Lcom/badlogic/gdx/pay/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public purchaseCost:I

.field public purchaseCostCurrency:Ljava/lang/String;

.field public purchaseText:Ljava/lang/String;

.field public purchaseTime:Ljava/util/Date;

.field public requestId:Ljava/lang/String;

.field public reversalText:Ljava/lang/String;

.field public reversalTime:Ljava/util/Date;

.field public storeName:Ljava/lang/String;

.field public transactionData:Ljava/lang/String;

.field public transactionDataSignature:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->requestId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseCost()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseCost:I

    return v0
.end method

.method public getPurchaseCostCurrency()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseCostCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseText()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseText:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionData()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionData:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDataSignature()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionDataSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isPurchased()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Transaction;->reversalTime:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseText(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseText:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseTime(Ljava/util/Date;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseTime:Ljava/util/Date;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setReversalText(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->reversalText:Ljava/lang/String;

    return-void
.end method

.method public setReversalTime(Ljava/util/Date;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->reversalTime:Ljava/util/Date;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setTransactionData(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionData:Ljava/lang/String;

    return-void
.end method

.method public setTransactionDataSignature(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionDataSignature:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Transaction;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", storeName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", orderId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseCost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseCost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", purchaseCostCurrency=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->purchaseCostCurrency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reversalTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->reversalTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reversalText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->reversalText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionDataSignature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Transaction;->transactionDataSignature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
