###### Class com.badlogic.gdx.Input (com.badlogic.gdx.Input)
.class public interface abstract Lcom/badlogic/gdx/Input;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Input$Orientation;,
        Lcom/badlogic/gdx/Input$OnscreenKeyboardType;,
        Lcom/badlogic/gdx/Input$Keys;,
        Lcom/badlogic/gdx/Input$TextInputListener;
    }
.end annotation


# virtual methods
.method public closeTextInputField(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 810
    invoke-interface {p0, p1, v0}, Lcom/badlogic/gdx/Input;->closeTextInputField(ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V

    return-void
.end method

.method public closeTextInputField(ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getX()I
.end method

.method public abstract getX(I)I
.end method

.method public abstract getY()I
.end method

.method public abstract getY(I)I
.end method

.method public abstract isKeyPressed(I)Z
.end method

.method public abstract isTouched()Z
.end method

.method public abstract isTouched(I)Z
.end method

.method public abstract setCatchKey(IZ)V
.end method

.method public abstract setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
.end method

###### Class com.badlogic.gdx.Input.Keys (com.badlogic.gdx.Input$Keys)
.class public Lcom/badlogic/gdx/Input$Keys;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public static toString(I)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_239

    const/16 v0, 0xff

    if-gt p0, v0, :cond_222

    const/16 v0, 0x73

    if-eq p0, v0, :cond_21f

    const/16 v0, 0x74

    if-eq p0, v0, :cond_21c

    const/16 v0, 0x78

    if-eq p0, v0, :cond_219

    const/16 v0, 0x79

    if-eq p0, v0, :cond_216

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_213

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_210

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_20d

    packed-switch p0, :pswitch_data_250

    packed-switch p0, :pswitch_data_336

    packed-switch p0, :pswitch_data_380

    const/4 p0, 0x0

    return-object p0

    .line 591
    :pswitch_2d
    const-string p0, "F24"

    return-object p0

    .line 589
    :pswitch_30
    const-string p0, "F23"

    return-object p0

    .line 587
    :pswitch_33
    const-string p0, "F22"

    return-object p0

    .line 585
    :pswitch_36
    const-string p0, "F21"

    return-object p0

    .line 583
    :pswitch_39
    const-string p0, "F20"

    return-object p0

    .line 581
    :pswitch_3c
    const-string p0, "F19"

    return-object p0

    .line 579
    :pswitch_3f
    const-string p0, "F18"

    return-object p0

    .line 577
    :pswitch_42
    const-string p0, "F17"

    return-object p0

    .line 575
    :pswitch_45
    const-string p0, "F16"

    return-object p0

    .line 573
    :pswitch_48
    const-string p0, "F15"

    return-object p0

    .line 571
    :pswitch_4b
    const-string p0, "F14"

    return-object p0

    .line 569
    :pswitch_4e
    const-string p0, "F13"

    return-object p0

    .line 611
    :pswitch_51
    const-string p0, "Num )"

    return-object p0

    .line 609
    :pswitch_54
    const-string p0, "Num ("

    return-object p0

    .line 607
    :pswitch_57
    const-string p0, "Num ="

    return-object p0

    .line 605
    :pswitch_5a
    const-string p0, "Num Enter"

    return-object p0

    .line 603
    :pswitch_5d
    const-string p0, "Num ,"

    return-object p0

    .line 601
    :pswitch_60
    const-string p0, "Num ."

    return-object p0

    .line 599
    :pswitch_63
    const-string p0, "Num +"

    return-object p0

    .line 597
    :pswitch_66
    const-string p0, "Num -"

    return-object p0

    .line 595
    :pswitch_69
    const-string p0, "Num *"

    return-object p0

    .line 593
    :pswitch_6c
    const-string p0, "Num /"

    return-object p0

    .line 541
    :pswitch_6f
    const-string p0, "Numpad 9"

    return-object p0

    .line 539
    :pswitch_72
    const-string p0, "Numpad 8"

    return-object p0

    .line 537
    :pswitch_75
    const-string p0, "Numpad 7"

    return-object p0

    .line 535
    :pswitch_78
    const-string p0, "Numpad 6"

    return-object p0

    .line 533
    :pswitch_7b
    const-string p0, "Numpad 5"

    return-object p0

    .line 531
    :pswitch_7e
    const-string p0, "Numpad 4"

    return-object p0

    .line 529
    :pswitch_81
    const-string p0, "Numpad 3"

    return-object p0

    .line 527
    :pswitch_84
    const-string p0, "Numpad 2"

    return-object p0

    .line 525
    :pswitch_87
    const-string p0, "Numpad 1"

    return-object p0

    .line 523
    :pswitch_8a
    const-string p0, "Numpad 0"

    return-object p0

    .line 613
    :pswitch_8d
    const-string p0, "Num Lock"

    return-object p0

    .line 567
    :pswitch_90
    const-string p0, "F12"

    return-object p0

    .line 565
    :pswitch_93
    const-string p0, "F11"

    return-object p0

    .line 563
    :pswitch_96
    const-string p0, "F10"

    return-object p0

    .line 561
    :pswitch_99
    const-string p0, "F9"

    return-object p0

    .line 559
    :pswitch_9c
    const-string p0, "F8"

    return-object p0

    .line 557
    :pswitch_9f
    const-string p0, "F7"

    return-object p0

    .line 555
    :pswitch_a2
    const-string p0, "F6"

    return-object p0

    .line 553
    :pswitch_a5
    const-string p0, "F5"

    return-object p0

    .line 551
    :pswitch_a8
    const-string p0, "F4"

    return-object p0

    .line 549
    :pswitch_ab
    const-string p0, "F3"

    return-object p0

    .line 547
    :pswitch_ae
    const-string p0, "F2"

    return-object p0

    .line 545
    :pswitch_b1
    const-string p0, "F1"

    return-object p0

    .line 515
    :pswitch_b4
    const-string p0, "R-Ctrl"

    return-object p0

    .line 513
    :pswitch_b7
    const-string p0, "L-Ctrl"

    return-object p0

    .line 511
    :pswitch_ba
    const-string p0, "Forward Delete"

    return-object p0

    .line 517
    :pswitch_bd
    const-string p0, "Escape"

    return-object p0

    .line 509
    :pswitch_c0
    const-string p0, "Button Mode"

    return-object p0

    .line 507
    :pswitch_c3
    const-string p0, "Select"

    return-object p0

    .line 505
    :pswitch_c6
    const-string p0, "Start"

    return-object p0

    .line 503
    :pswitch_c9
    const-string p0, "Right Thumb"

    return-object p0

    .line 501
    :pswitch_cc
    const-string p0, "Left Thumb"

    return-object p0

    .line 499
    :pswitch_cf
    const-string p0, "R2 Button"

    return-object p0

    .line 497
    :pswitch_d2
    const-string p0, "L2 Button"

    return-object p0

    .line 495
    :pswitch_d5
    const-string p0, "R1 Button"

    return-object p0

    .line 493
    :pswitch_d8
    const-string p0, "L1 Button"

    return-object p0

    .line 491
    :pswitch_db
    const-string p0, "Z Button"

    return-object p0

    .line 489
    :pswitch_de
    const-string p0, "Y Button"

    return-object p0

    .line 487
    :pswitch_e1
    const-string p0, "X Button"

    return-object p0

    .line 485
    :pswitch_e4
    const-string p0, "C Button"

    return-object p0

    .line 483
    :pswitch_e7
    const-string p0, "B Button"

    return-object p0

    .line 481
    :pswitch_ea
    const-string p0, "A Button"

    return-object p0

    .line 479
    :pswitch_ed
    const-string p0, "SWITCH_CHARSET"

    return-object p0

    .line 477
    :pswitch_f0
    const-string p0, "PICTSYMBOLS"

    return-object p0

    .line 475
    :pswitch_f3
    const-string p0, "Page Down"

    return-object p0

    .line 473
    :pswitch_f6
    const-string p0, "Page Up"

    return-object p0

    .line 471
    :pswitch_f9
    const-string p0, "Mute"

    return-object p0

    .line 469
    :pswitch_fc
    const-string p0, "Fast Forward"

    return-object p0

    .line 467
    :pswitch_ff
    const-string p0, "Rewind"

    return-object p0

    .line 465
    :pswitch_102
    const-string p0, "Prev Media"

    return-object p0

    .line 463
    :pswitch_105
    const-string p0, "Next Media"

    return-object p0

    .line 461
    :pswitch_108
    const-string p0, "Stop Media"

    return-object p0

    .line 459
    :pswitch_10b
    const-string p0, "Play/Pause"

    return-object p0

    .line 457
    :pswitch_10e
    const-string p0, "Search"

    return-object p0

    .line 455
    :pswitch_111
    const-string p0, "Notification"

    return-object p0

    .line 453
    :pswitch_114
    const-string p0, "Menu"

    return-object p0

    .line 451
    :pswitch_117
    const-string p0, "Plus"

    return-object p0

    .line 449
    :pswitch_11a
    const-string p0, "Focus"

    return-object p0

    .line 447
    :pswitch_11d
    const-string p0, "Headset Hook"

    return-object p0

    .line 445
    :pswitch_120
    const-string p0, "Num"

    return-object p0

    .line 443
    :pswitch_123
    const-string p0, "@"

    return-object p0

    .line 441
    :pswitch_126
    const-string p0, "/"

    return-object p0

    .line 439
    :pswitch_129
    const-string p0, "\'"

    return-object p0

    .line 437
    :pswitch_12c
    const-string p0, ";"

    return-object p0

    .line 435
    :pswitch_12f
    const-string p0, "\\"

    return-object p0

    .line 433
    :pswitch_132
    const-string p0, "]"

    return-object p0

    .line 431
    :pswitch_135
    const-string p0, "["

    return-object p0

    .line 429
    :pswitch_138
    const-string p0, "="

    return-object p0

    .line 427
    :pswitch_13b
    const-string p0, "-"

    return-object p0

    .line 425
    :pswitch_13e
    const-string p0, "`"

    return-object p0

    .line 423
    :pswitch_141
    const-string p0, "Delete"

    return-object p0

    .line 421
    :pswitch_144
    const-string p0, "Enter"

    return-object p0

    .line 419
    :pswitch_147
    const-string p0, "Envelope"

    return-object p0

    .line 417
    :pswitch_14a
    const-string p0, "Explorer"

    return-object p0

    .line 415
    :pswitch_14d
    const-string p0, "SYM"

    return-object p0

    .line 413
    :pswitch_150
    const-string p0, "Space"

    return-object p0

    .line 411
    :pswitch_153
    const-string p0, "Tab"

    return-object p0

    .line 409
    :pswitch_156
    const-string p0, "R-Shift"

    return-object p0

    .line 407
    :pswitch_159
    const-string p0, "L-Shift"

    return-object p0

    .line 405
    :pswitch_15c
    const-string p0, "R-Alt"

    return-object p0

    .line 403
    :pswitch_15f
    const-string p0, "L-Alt"

    return-object p0

    .line 401
    :pswitch_162
    const-string p0, "."

    return-object p0

    .line 399
    :pswitch_165
    const-string p0, ","

    return-object p0

    .line 397
    :pswitch_168
    const-string p0, "Z"

    return-object p0

    .line 395
    :pswitch_16b
    const-string p0, "Y"

    return-object p0

    .line 393
    :pswitch_16e
    const-string p0, "X"

    return-object p0

    .line 391
    :pswitch_171
    const-string p0, "W"

    return-object p0

    .line 389
    :pswitch_174
    const-string p0, "V"

    return-object p0

    .line 387
    :pswitch_177
    const-string p0, "U"

    return-object p0

    .line 385
    :pswitch_17a
    const-string p0, "T"

    return-object p0

    .line 383
    :pswitch_17d
    const-string p0, "S"

    return-object p0

    .line 381
    :pswitch_180
    const-string p0, "R"

    return-object p0

    .line 379
    :pswitch_183
    const-string p0, "Q"

    return-object p0

    .line 377
    :pswitch_186
    const-string p0, "P"

    return-object p0

    .line 375
    :pswitch_189
    const-string p0, "O"

    return-object p0

    .line 373
    :pswitch_18c
    const-string p0, "N"

    return-object p0

    .line 371
    :pswitch_18f
    const-string p0, "M"

    return-object p0

    .line 369
    :pswitch_192
    const-string p0, "L"

    return-object p0

    .line 367
    :pswitch_195
    const-string p0, "K"

    return-object p0

    .line 365
    :pswitch_198
    const-string p0, "J"

    return-object p0

    .line 363
    :pswitch_19b
    const-string p0, "I"

    return-object p0

    .line 361
    :pswitch_19e
    const-string p0, "H"

    return-object p0

    .line 359
    :pswitch_1a1
    const-string p0, "G"

    return-object p0

    .line 357
    :pswitch_1a4
    const-string p0, "F"

    return-object p0

    .line 355
    :pswitch_1a7
    const-string p0, "E"

    return-object p0

    .line 353
    :pswitch_1aa
    const-string p0, "D"

    return-object p0

    .line 351
    :pswitch_1ad
    const-string p0, "C"

    return-object p0

    .line 349
    :pswitch_1b0
    const-string p0, "B"

    return-object p0

    .line 347
    :pswitch_1b3
    const-string p0, "A"

    return-object p0

    .line 345
    :pswitch_1b6
    const-string p0, "Clear"

    return-object p0

    .line 343
    :pswitch_1b9
    const-string p0, "Camera"

    return-object p0

    .line 341
    :pswitch_1bc
    const-string p0, "Power"

    return-object p0

    .line 339
    :pswitch_1bf
    const-string p0, "Volume Down"

    return-object p0

    .line 337
    :pswitch_1c2
    const-string p0, "Volume Up"

    return-object p0

    .line 335
    :pswitch_1c5
    const-string p0, "Center"

    return-object p0

    .line 333
    :pswitch_1c8
    const-string p0, "Right"

    return-object p0

    .line 331
    :pswitch_1cb
    const-string p0, "Left"

    return-object p0

    .line 329
    :pswitch_1ce
    const-string p0, "Down"

    return-object p0

    .line 327
    :pswitch_1d1
    const-string p0, "Up"

    return-object p0

    .line 325
    :pswitch_1d4
    const-string p0, "#"

    return-object p0

    .line 323
    :pswitch_1d7
    const-string p0, "*"

    return-object p0

    .line 321
    :pswitch_1da
    const-string p0, "9"

    return-object p0

    .line 319
    :pswitch_1dd
    const-string p0, "8"

    return-object p0

    .line 317
    :pswitch_1e0
    const-string p0, "7"

    return-object p0

    .line 315
    :pswitch_1e3
    const-string p0, "6"

    return-object p0

    .line 313
    :pswitch_1e6
    const-string p0, "5"

    return-object p0

    .line 311
    :pswitch_1e9
    const-string p0, "4"

    return-object p0

    .line 309
    :pswitch_1ec
    const-string p0, "3"

    return-object p0

    .line 307
    :pswitch_1ef
    const-string p0, "2"

    return-object p0

    .line 305
    :pswitch_1f2
    const-string p0, "1"

    return-object p0

    .line 303
    :pswitch_1f5
    const-string p0, "0"

    return-object p0

    .line 301
    :pswitch_1f8
    const-string p0, "End Call"

    return-object p0

    .line 299
    :pswitch_1fb
    const-string p0, "Call"

    return-object p0

    .line 297
    :pswitch_1fe
    const-string p0, "Back"

    return-object p0

    .line 295
    :pswitch_201
    const-string p0, "Home"

    return-object p0

    .line 293
    :pswitch_204
    const-string p0, "Soft Right"

    return-object p0

    .line 291
    :pswitch_207
    const-string p0, "Soft Left"

    return-object p0

    .line 289
    :pswitch_20a
    const-string p0, "Unknown"

    return-object p0

    .line 543
    :cond_20d
    const-string p0, ":"

    return-object p0

    .line 521
    :cond_210
    const-string p0, "Insert"

    return-object p0

    .line 519
    :cond_213
    const-string p0, "End"

    return-object p0

    .line 619
    :cond_216
    const-string p0, "Pause"

    return-object p0

    .line 621
    :cond_219
    const-string p0, "Print"

    return-object p0

    .line 617
    :cond_21c
    const-string p0, "Scroll Lock"

    return-object p0

    .line 615
    :cond_21f
    const-string p0, "Caps Lock"

    return-object p0

    .line 285
    :cond_222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode cannot be greater than 255, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode cannot be negative, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_250
    .packed-switch 0x0
        :pswitch_20a
        :pswitch_207
        :pswitch_204
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fb
        :pswitch_1f8
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e9
        :pswitch_1e6
        :pswitch_1e3
        :pswitch_1e0
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1d1
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b9
        :pswitch_1b6
        :pswitch_1b3
        :pswitch_1b0
        :pswitch_1ad
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a4
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19b
        :pswitch_198
        :pswitch_195
        :pswitch_192
        :pswitch_18f
        :pswitch_18c
        :pswitch_189
        :pswitch_186
        :pswitch_183
        :pswitch_180
        :pswitch_17d
        :pswitch_17a
        :pswitch_177
        :pswitch_174
        :pswitch_171
        :pswitch_16e
        :pswitch_16b
        :pswitch_168
        :pswitch_165
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
        :pswitch_156
        :pswitch_153
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
    .end packed-switch

    :pswitch_data_336
    .packed-switch 0x81
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch

    :pswitch_data_380
    .packed-switch 0xb7
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

###### Class com.badlogic.gdx.Input.OnscreenKeyboardType (com.badlogic.gdx.Input$OnscreenKeyboardType)
.class public final enum Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnscreenKeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$OnscreenKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    .registers 6

    .line 848
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v2, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v4, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v5, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    filled-new-array/range {v0 .. v5}, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 849
    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "NumberPad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "PhonePad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Email"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Password"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "URI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 848
    invoke-static {}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->$values()[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->$VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 848
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    .registers 2

    .line 848
    const-class v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    .registers 1

    .line 848
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->$VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-object v0
.end method

###### Class com.badlogic.gdx.Input.Orientation (com.badlogic.gdx.Input$Orientation)
.class public final enum Lcom/badlogic/gdx/Input$Orientation;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$Orientation;

.field public static final enum Landscape:Lcom/badlogic/gdx/Input$Orientation;

.field public static final enum Portrait:Lcom/badlogic/gdx/Input$Orientation;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/Input$Orientation;
    .registers 2

    .line 963
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    filled-new-array {v0, v1}, [Lcom/badlogic/gdx/Input$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 964
    new-instance v0, Lcom/badlogic/gdx/Input$Orientation;

    const-string v1, "Landscape"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    new-instance v0, Lcom/badlogic/gdx/Input$Orientation;

    const-string v1, "Portrait"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    .line 963
    invoke-static {}, Lcom/badlogic/gdx/Input$Orientation;->$values()[Lcom/badlogic/gdx/Input$Orientation;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Input$Orientation;->$VALUES:[Lcom/badlogic/gdx/Input$Orientation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 963
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$Orientation;
    .registers 2

    .line 963
    const-class v0, Lcom/badlogic/gdx/Input$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Input$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$Orientation;
    .registers 1

    .line 963
    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->$VALUES:[Lcom/badlogic/gdx/Input$Orientation;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

###### Class com.badlogic.gdx.Input.TextInputListener (com.badlogic.gdx.Input$TextInputListener)
.class public interface abstract Lcom/badlogic/gdx/Input$TextInputListener;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextInputListener"
.end annotation


# virtual methods
.method public abstract canceled()V
.end method

.method public abstract input(Ljava/lang/String;)V
.end method
