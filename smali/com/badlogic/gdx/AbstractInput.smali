###### Class com.badlogic.gdx.AbstractInput (com.badlogic.gdx.AbstractInput)
.class public abstract Lcom/badlogic/gdx/AbstractInput;
.super Ljava/lang/Object;
.source "AbstractInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;


# instance fields
.field public final justPressedKeys:[Z

.field public keyJustPressed:Z

.field public final keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

.field public pressedKeyCount:I

.field public final pressedKeys:[Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/16 v0, 0x100

    .line 14
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    .line 15
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    return-void
.end method


# virtual methods
.method public isCatchKey(I)Z
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public isKeyPressed(I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    .line 21
    iget p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    if-lez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    return v1

    :cond_b
    if-ltz p1, :cond_17

    const/16 v0, 0xff

    if-le p1, v0, :cond_12

    goto :goto_17

    .line 26
    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_17
    :goto_17
    return v1
.end method

.method public setCatchKey(IZ)V
    .registers 3

    if-nez p2, :cond_8

    .line 43
    iget-object p2, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    return-void

    .line 45
    :cond_8
    iget-object p2, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    return-void
.end method
