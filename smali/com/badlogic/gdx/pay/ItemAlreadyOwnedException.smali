###### Class com.badlogic.gdx.pay.ItemAlreadyOwnedException (com.badlogic.gdx.pay.ItemAlreadyOwnedException)
.class public Lcom/badlogic/gdx/pay/ItemAlreadyOwnedException;
.super Lcom/badlogic/gdx/pay/GdxPayException;
.source "ItemAlreadyOwnedException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    const-string v0, "Purchase failed: Item is already owned."

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    return-void
.end method
