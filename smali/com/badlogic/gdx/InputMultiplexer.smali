###### Class com.badlogic.gdx.InputMultiplexer (com.badlogic.gdx.InputMultiplexer)
.class public Lcom/badlogic/gdx/InputMultiplexer;
.super Ljava/lang/Object;
.source "InputMultiplexer.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# instance fields
.field public processors:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/InputProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/InputProcessor;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 32
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 79
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 80
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 82
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 83
    throw p1
.end method

.method public keyTyped(C)Z
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 101
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 102
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 104
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 105
    throw p1
.end method

.method public keyUp(I)Z
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 90
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 91
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 93
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 94
    throw p1
.end method

.method public mouseMoved(II)Z
    .registers 8

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 156
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 157
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 159
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 160
    throw p1
.end method

.method public scrolled(FF)Z
    .registers 8

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 167
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 168
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 170
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 171
    throw p1
.end method

.method public touchCancelled(IIII)Z
    .registers 10

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 134
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 135
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputProcessor;->touchCancelled(IIII)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 137
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 138
    throw p1
.end method

.method public touchDown(IIII)Z
    .registers 10

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 112
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 113
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 115
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 116
    throw p1
.end method

.method public touchDragged(III)Z
    .registers 9

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 145
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 146
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2, p3}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 148
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 149
    throw p1
.end method

.method public touchUp(IIII)Z
    .registers 10

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    .line 123
    :try_start_6
    iget-object v1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_24

    .line 124
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/InputProcessor;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    move-result v4
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_22

    if-eqz v4, :cond_1f

    .line 126
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catchall_22
    move-exception p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return v2

    :goto_2a
    iget-object p2, p0, Lcom/badlogic/gdx/InputMultiplexer;->processors:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 127
    throw p1
.end method
