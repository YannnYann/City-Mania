###### Class io.blueflower.stapel2d.key.KeyMapper (io.blueflower.stapel2d.key.KeyMapper)
.class public final Lio/blueflower/stapel2d/key/KeyMapper;
.super Ljava/lang/Object;
.source "KeyMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;
    }
.end annotation


# instance fields
.field public final REPEATEDKEY_DELAY_MS:I

.field public final REPEATEDKEY_FIRST_DELAY_MS:I

.field public actualActiveKeys:I

.field public changeList:Lio/blueflower/stapel2d/util/IntList;

.field public ghostKeyDown:[Z

.field public ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

.field public ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

.field public hasTypedChar:Z

.field public keyCount:I

.field public keyDown:[Z

.field public keyDownStart:[J

.field public keyHit:Lio/blueflower/stapel2d/util/IntList;

.field public keyRelease:Lio/blueflower/stapel2d/util/IntList;

.field public processor:Lcom/badlogic/gdx/InputProcessor;

.field public repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

.field public typedChar:C

.field public typedChars:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    .line 23
    iput v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->REPEATEDKEY_FIRST_DELAY_MS:I

    const/16 v0, 0x28

    .line 24
    iput v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->REPEATEDKEY_DELAY_MS:I

    .line 32
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->changeList:Lio/blueflower/stapel2d/util/IntList;

    .line 34
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 36
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyRelease:Lio/blueflower/stapel2d/util/IntList;

    .line 40
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

    .line 42
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 44
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChars:Lio/blueflower/stapel2d/util/IntList;

    .line 257
    new-instance v0, Lio/blueflower/stapel2d/key/KeyMapper$1;

    invoke-direct {v0, p0}, Lio/blueflower/stapel2d/key/KeyMapper$1;-><init>(Lio/blueflower/stapel2d/key/KeyMapper;)V

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/16 v0, 0x100

    .line 54
    iput v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyCount:I

    .line 56
    new-array v1, v0, [Z

    iput-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown:[Z

    .line 57
    new-array v1, v0, [Z

    iput-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyDown:[Z

    .line 58
    new-array v0, v0, [J

    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDownStart:[J

    return-void
.end method

.method public static synthetic access$200(Lio/blueflower/stapel2d/key/KeyMapper;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChars:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized filteredFlush([I)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 237
    :goto_3
    :try_start_3
    iget v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyCount:I

    if-ge v1, v2, :cond_29

    move v2, v0

    move v3, v2

    .line 239
    :goto_9
    array-length v4, p1

    if-ge v2, v4, :cond_1a

    if-nez v3, :cond_1a

    .line 240
    aget v3, p1, v2

    if-ne v1, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catchall_18
    move-exception p1

    goto :goto_2b

    :cond_1a
    if-nez v3, :cond_26

    .line 243
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    .line 244
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyReleased(I)Z

    .line 245
    iget-object v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyDown:[Z

    aput-boolean v0, v2, v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_18

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 248
    :cond_29
    monitor-exit p0

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_18

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 224
    :goto_3
    :try_start_3
    iget v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyCount:I

    if-ge v1, v2, :cond_14

    .line 225
    iget-object v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown:[Z

    aput-boolean v0, v2, v1

    .line 226
    iget-object v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyDown:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_12
    move-exception v0

    goto :goto_2f

    .line 229
    :cond_14
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->changeList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 230
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 231
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 232
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyRelease:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 233
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_12

    .line 234
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_12

    throw v0
.end method

.method public declared-synchronized getActiveModifier()I
    .registers 3

    monitor-enter p0

    const/16 v0, 0x81

    .line 148
    :try_start_3
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_16

    :cond_12
    const/4 v0, 0x0

    goto :goto_17

    :catchall_14
    move-exception v0

    goto :goto_3d

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    const/16 v1, 0x3b

    .line 151
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1

    if-nez v1, :cond_27

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_27
    or-int/lit8 v0, v0, 0x2

    :cond_29
    const/16 v1, 0x39

    .line 154
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1

    if-nez v1, :cond_39

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_14

    if-eqz v1, :cond_3b

    :cond_39
    or-int/lit8 v0, v0, 0x4

    .line 157
    :cond_3b
    monitor-exit p0

    return v0

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_14

    throw v0
.end method

.method public getActualActiveKeys()I
    .registers 2

    .line 138
    iget v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->actualActiveKeys:I

    return v0
.end method

.method public getTypedChar()C
    .registers 2

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->hasTypedChar:Z

    .line 130
    iget-char v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChar:C

    return v0
.end method

.method public hasTypedChar()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->hasTypedChar:Z

    return v0
.end method

.method public declared-synchronized keyDown(I)Z
    .registers 3

    monitor-enter p0

    if-gtz p1, :cond_6

    .line 197
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 198
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyDown:[Z

    aget-boolean p1, v0, p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized keyDown(II)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-gtz p1, :cond_6

    .line 206
    monitor-exit p0

    return v0

    .line 207
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lio/blueflower/stapel2d/key/KeyMapper;->getActiveModifier()I

    move-result v1

    if-ne v1, p2, :cond_16

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :catchall_14
    move-exception p1

    goto :goto_18

    :cond_16
    :goto_16
    monitor-exit p0

    return v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_14

    throw p1
.end method

.method public declared-synchronized keyHit(I)Z
    .registers 3

    monitor-enter p0

    if-gtz p1, :cond_6

    .line 166
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    .line 168
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized keyHit(II)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-gtz p1, :cond_6

    .line 178
    monitor-exit p0

    return v0

    .line 179
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lio/blueflower/stapel2d/key/KeyMapper;->getActiveModifier()I

    move-result v1

    if-ne v1, p2, :cond_1b

    .line 180
    iget-object p2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    .line 181
    iget-object p2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 183
    :cond_1b
    monitor-exit p0

    return v0

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_19

    throw p1
.end method

.method public declared-synchronized keyReleased(I)Z
    .registers 3

    monitor-enter p0

    if-gtz p1, :cond_6

    .line 216
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 217
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_e

    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized keyRepeatedHit(I)Z
    .registers 3

    monitor-enter p0

    if-gtz p1, :cond_6

    .line 142
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeValue(I)Z

    move-result v0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_13

    or-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public declared-synchronized map(Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;)V
    .registers 8

    monitor-enter p0

    .line 66
    :try_start_1
    invoke-interface {p1}, Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;->getKeyCode()I

    move-result v0

    if-ltz v0, :cond_50

    .line 67
    iget v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyCount:I

    if-lt v0, v1, :cond_c

    goto :goto_50

    .line 68
    :cond_c
    iget-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->changeList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 70
    invoke-interface {p1}, Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3b

    if-eq p1, v1, :cond_1b

    goto :goto_4e

    .line 72
    :cond_1b
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown:[Z

    aget-boolean v2, p1, v0

    if-nez v2, :cond_4e

    .line 73
    aput-boolean v1, p1, v0

    .line 74
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDownStart:[J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 75
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 76
    iget p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->actualActiveKeys:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->actualActiveKeys:I

    goto :goto_4e

    :catchall_39
    move-exception p1

    goto :goto_52

    .line 80
    :cond_3b
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    .line 81
    aput-boolean v2, p1, v0

    .line 82
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyRelease:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 83
    iget p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->actualActiveKeys:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->actualActiveKeys:I
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_39

    .line 90
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-void

    .line 67
    :cond_50
    :goto_50
    monitor-exit p0

    return-void

    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_39

    throw p1
.end method

.method public shiftDown()Z
    .registers 2

    const/16 v0, 0x3b

    .line 188
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized update()V
    .registers 9

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 99
    :goto_c
    iget-object v4, p0, Lio/blueflower/stapel2d/key/KeyMapper;->changeList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 100
    iget-object v4, p0, Lio/blueflower/stapel2d/key/KeyMapper;->changeList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 101
    iget-object v5, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyDown:[Z

    iget-object v6, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown:[Z

    aget-boolean v6, v6, v4

    aput-boolean v6, v5, v4

    if-eqz v6, :cond_39

    .line 102
    iget-object v5, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyDownStart:[J

    aget-wide v6, v5, v4

    cmp-long v6, v6, v0

    if-gez v6, :cond_39

    const-wide/16 v6, 0x28

    add-long/2addr v6, v0

    .line 103
    aput-wide v6, v5, v4

    .line 104
    iget-object v5, p0, Lio/blueflower/stapel2d/key/KeyMapper;->repeatedKeyHit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_39

    :catchall_37
    move-exception v0

    goto :goto_6b

    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 110
    :cond_3c
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 111
    iget-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    iput-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 112
    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyHit:Lio/blueflower/stapel2d/util/IntList;

    .line 113
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 115
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyRelease:Lio/blueflower/stapel2d/util/IntList;

    .line 116
    iget-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

    iput-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper;->keyRelease:Lio/blueflower/stapel2d/util/IntList;

    .line 117
    iput-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->ghostKeyRelease:Lio/blueflower/stapel2d/util/IntList;

    .line 118
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 120
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChars:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 121
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChars:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->typedChar:C

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/blueflower/stapel2d/key/KeyMapper;->hasTypedChar:Z

    goto :goto_69

    .line 124
    :cond_67
    iput-boolean v2, p0, Lio/blueflower/stapel2d/key/KeyMapper;->hasTypedChar:Z
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_37

    .line 126
    :goto_69
    monitor-exit p0

    return-void

    :goto_6b
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_37

    throw v0
.end method

###### Class io.blueflower.stapel2d.key.KeyMapper.AnonymousClass1 (io.blueflower.stapel2d.key.KeyMapper$1)
.class public Lio/blueflower/stapel2d/key/KeyMapper$1;
.super Ljava/lang/Object;
.source "KeyMapper.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/key/KeyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public action:I

.field public keyCode:I

.field public keyEvent:Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;

.field public final synthetic this$0:Lio/blueflower/stapel2d/key/KeyMapper;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->this$0:Lio/blueflower/stapel2d/key/KeyMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance p1, Lio/blueflower/stapel2d/key/KeyMapper$1$1;

    invoke-direct {p1, p0}, Lio/blueflower/stapel2d/key/KeyMapper$1$1;-><init>(Lio/blueflower/stapel2d/key/KeyMapper$1;)V

    iput-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyEvent:Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;

    return-void
.end method

.method public static synthetic access$000(Lio/blueflower/stapel2d/key/KeyMapper$1;)I
    .registers 1

    .line 257
    iget p0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyCode:I

    return p0
.end method

.method public static synthetic access$100(Lio/blueflower/stapel2d/key/KeyMapper$1;)I
    .registers 1

    .line 257
    iget p0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->action:I

    return p0
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 5

    .line 281
    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyCode:I

    const/4 v0, 0x1

    .line 282
    iput v0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->action:I

    .line 283
    iget-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->this$0:Lio/blueflower/stapel2d/key/KeyMapper;

    iget-object v2, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyEvent:Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->map(Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;)V

    const/4 v1, 0x4

    if-ne p1, v1, :cond_23

    .line 286
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 287
    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v1, :cond_23

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->action:I

    .line 289
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->this$0:Lio/blueflower/stapel2d/key/KeyMapper;

    iget-object v1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyEvent:Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->map(Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;)V

    :cond_23
    return v0
.end method

.method public keyTyped(C)Z
    .registers 3

    .line 305
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->this$0:Lio/blueflower/stapel2d/key/KeyMapper;

    invoke-static {v0}, Lio/blueflower/stapel2d/key/KeyMapper;->access$200(Lio/blueflower/stapel2d/key/KeyMapper;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public keyUp(I)Z
    .registers 3

    .line 297
    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyCode:I

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->action:I

    .line 299
    iget-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->this$0:Lio/blueflower/stapel2d/key/KeyMapper;

    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1;->keyEvent:Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->map(Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public mouseMoved(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(FF)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public touchCancelled(IIII)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(IIII)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(III)Z
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public touchUp(IIII)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class io.blueflower.stapel2d.key.KeyMapper.AnonymousClass1.C12131 (io.blueflower.stapel2d.key.KeyMapper$1$1)
.class public Lio/blueflower/stapel2d/key/KeyMapper$1$1;
.super Ljava/lang/Object;
.source "KeyMapper.java"

# interfaces
.implements Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/key/KeyMapper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/blueflower/stapel2d/key/KeyMapper$1;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/key/KeyMapper$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lio/blueflower/stapel2d/key/KeyMapper$1$1;->this$1:Lio/blueflower/stapel2d/key/KeyMapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .line 275
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1$1;->this$1:Lio/blueflower/stapel2d/key/KeyMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/key/KeyMapper$1;->access$100(Lio/blueflower/stapel2d/key/KeyMapper$1;)I

    move-result v0

    return v0
.end method

.method public getKeyCode()I
    .registers 2

    .line 270
    iget-object v0, p0, Lio/blueflower/stapel2d/key/KeyMapper$1$1;->this$1:Lio/blueflower/stapel2d/key/KeyMapper$1;

    invoke-static {v0}, Lio/blueflower/stapel2d/key/KeyMapper$1;->access$000(Lio/blueflower/stapel2d/key/KeyMapper$1;)I

    move-result v0

    return v0
.end method

###### Class io.blueflower.stapel2d.key.KeyMapper.KeyEvent (io.blueflower.stapel2d.key.KeyMapper$KeyEvent)
.class public interface abstract Lio/blueflower/stapel2d/key/KeyMapper$KeyEvent;
.super Ljava/lang/Object;
.source "KeyMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/key/KeyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyEvent"
.end annotation


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getKeyCode()I
.end method
