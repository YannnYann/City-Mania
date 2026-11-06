###### Class info.flowersoft.theotown.stages.AccountStage (info.flowersoft.theotown.stages.AccountStage)
.class public Linfo/flowersoft/theotown/stages/AccountStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "AccountStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/AccountStage$AccountType;
    }
.end annotation


# static fields
.field public static final TEST_BACKEND_SERVICE:Linfo/flowersoft/theotown/backend/Service;


# instance fields
.field public cmdLogin:Linfo/flowersoft/theotown/ui/GoldButton;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public duringLogin:Z

.field public enterCtr:I

.field public isSetup:Z

.field public name:Ljava/lang/String;

.field public pw:Ljava/lang/String;

.field public tfName:Linfo/flowersoft/theotown/ui/TextField;

.field public tfPassword:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public static synthetic $r8$lambda$FqTaKPQPRAI5txfqSh_XEpXWWmo(Linfo/flowersoft/theotown/stages/AccountStage;I)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x64

    .line 82
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :goto_d
    new-instance v0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;I)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iXBrKSSF9ljt8hQX8iZD2CZWbZs(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 3

    .line 373
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 373
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    .line 374
    :cond_8
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$wZQSamcmvfBFL4DhxvZLpD53UL8(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 3

    .line 376
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 376
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    .line 377
    :cond_8
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$xfQw6s5zxJ5KWzV8iSzhn_W6zzA(Linfo/flowersoft/theotown/stages/AccountStage;I)V
    .registers 3

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->enterCtr:I

    if-ne v0, p1, :cond_7

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AccountStage;->setup()V

    :cond_7
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "user/test_backend"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/AccountStage;->TEST_BACKEND_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 43
    const-string p1, "connection"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->enterCtr:I

    .line 52
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->isSetup:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 1

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AccountStage;->unlinkForumAccount()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/AccountStage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/AccountStage;->encryptPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/stages/AccountStage;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->duringLogin:Z

    return p1
.end method

.method public static synthetic access$600()Linfo/flowersoft/theotown/backend/Service;
    .registers 1

    .line 41
    sget-object v0, Linfo/flowersoft/theotown/stages/AccountStage;->TEST_BACKEND_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    return-object v0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/stages/AccountStage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final addRegistrationProsAndCons(Linfo/flowersoft/theotown/util/LineLayoutFiller;)V
    .registers 11

    .line 382
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xcc9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 383
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 385
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v0

    const/16 v1, 0xa

    .line 386
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineHeight(I)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 387
    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 389
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd63

    .line 390
    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x47e

    .line 391
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa39

    .line 392
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x5ef

    .line 393
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 395
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8a1

    .line 396
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 401
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 402
    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 404
    new-instance v6, Lio/blueflower/stapel2d/util/Tuple;

    new-instance v7, Lio/blueflower/stapel2d/util/Tuple;

    const-string v8, "\u2714"

    invoke-direct {v7, v8, v5}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7, v1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    new-instance v5, Lio/blueflower/stapel2d/util/Tuple;

    const-string v7, "\u274c"

    invoke-direct {v5, v7, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v5, v3}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v1}, [Lio/blueflower/stapel2d/util/Tuple;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    .line 408
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/util/Tuple;

    .line 409
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 410
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 411
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v6

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 412
    invoke-virtual {p1, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 413
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    goto :goto_a4

    .line 417
    :cond_ca
    invoke-virtual {p1, v2, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 418
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineHeight(I)V

    return-void
.end method

.method public drop()V
    .registers 2

    .line 423
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_a

    .line 428
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->free()V

    .line 430
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_11

    .line 431
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->free()V

    :cond_11
    return-void
.end method

.method public final encryptPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 524
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object p1

    .line 526
    array-length v0, p2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_22

    .line 528
    aget-byte v3, p2, v2

    array-length v4, p1

    rem-int v4, v2, v4

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 530
    :cond_22
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string p2, "forum public key"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 531
    new-instance p2, Ljava/lang/String;

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/util/RSAEncrypter;->publicEncrypt([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public enter()V
    .registers 4

    .line 67
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 68
    iget v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->enterCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->enterCtr:I

    .line 70
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v1, :cond_1b

    .line 80
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 95
    :cond_1b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AccountStage;->setup()V

    return-void
.end method

.method public leave()V
    .registers 5

    .line 437
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->isSetup:Z

    if-nez v0, :cond_8

    .line 438
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->isSetup:Z

    .line 443
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 444
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->name:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->pw:Ljava/lang/String;

    .line 447
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_47

    .line 449
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    goto :goto_50

    .line 452
    :cond_47
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    .line 453
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    goto :goto_50

    .line 456
    :cond_4c
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    .line 457
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    .line 460
    :goto_50
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 462
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 463
    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->duringLogin:Z

    if-nez v1, :cond_90

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 464
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->invalidateSession()V

    .line 466
    sget-object v0, Linfo/flowersoft/theotown/stages/AccountStage;->TEST_BACKEND_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "hint"

    const-string v3, "forum"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 467
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/AccountStage$9;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/AccountStage$9;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    :cond_90
    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 488
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 490
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->cmdLogin:Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz v0, :cond_36

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_32

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    .line 491
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_32

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 490
    :goto_33
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 493
    :cond_36
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 494
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 495
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    return-void

    .line 497
    :cond_5a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    :cond_5f
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 62
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public final setup()V
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, v0, Linfo/flowersoft/theotown/stages/AccountStage;->isSetup:Z

    .line 101
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v2

    .line 104
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    .line 105
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->name:Ljava/lang/String;

    .line 106
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/TextField;->free()V

    .line 107
    iput-object v4, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    .line 109
    :cond_1f
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v3, :cond_30

    .line 110
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->pw:Ljava/lang/String;

    .line 111
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/TextField;->free()V

    .line 112
    iput-object v4, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    .line 115
    :cond_30
    new-instance v3, Linfo/flowersoft/theotown/ui/Page;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xa2b

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v3, v5, v6, v7, v8}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 116
    new-instance v5, Linfo/flowersoft/theotown/stages/AccountStage$1;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/stages/AccountStage$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v11

    .line 124
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    .line 125
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v11, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 127
    new-instance v3, Linfo/flowersoft/theotown/util/LineLayoutFiller;

    const/16 v5, 0x14

    invoke-direct {v3, v5, v1, v11}, Linfo/flowersoft/theotown/util/LineLayoutFiller;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 129
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x9a

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 130
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 131
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xf

    const/16 v12, 0xa

    div-int/2addr v5, v12

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineHeight(I)V

    .line 133
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    add-int/lit16 v5, v5, -0x12c

    const/4 v13, 0x2

    div-int/2addr v5, v13

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setStart(II)V

    .line 134
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartX()I

    move-result v6

    mul-int/2addr v6, v13

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineWidth(I)V

    .line 136
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v5

    .line 137
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x423

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v6

    const/high16 v14, 0x3f000000    # 0.5f

    const v15, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v14, v15}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 138
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    const/4 v6, 0x0

    const/16 v7, 0x50

    .line 140
    invoke-virtual {v3, v6, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 141
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xb33

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v22

    .line 143
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v8

    const-string v9, ""

    const/4 v10, -0x1

    if-eqz v8, :cond_18e

    .line 144
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/backend/User;->getUserColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    .line 145
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 146
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    .line 149
    :cond_102
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 150
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 151
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumPw()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_136

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumPw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_136

    .line 152
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x750

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v7

    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 153
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 156
    :cond_136
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 157
    invoke-virtual {v3, v1, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/16 v7, 0x64

    .line 158
    invoke-virtual {v3, v13, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 159
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    new-instance v8, Linfo/flowersoft/theotown/stages/AccountStage$2;

    invoke-direct {v8, v0, v2}, Linfo/flowersoft/theotown/stages/AccountStage$2;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;Linfo/flowersoft/theotown/backend/User;)V

    invoke-virtual {v3, v7, v9, v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 203
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xff

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/AccountStage$3;

    invoke-direct {v9, v0, v2}, Linfo/flowersoft/theotown/stages/AccountStage$3;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;Linfo/flowersoft/theotown/backend/User;)V

    invoke-virtual {v3, v7, v8, v9, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGoldButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 209
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumPw()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_183

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumPw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_183

    .line 210
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x391

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/AccountStage$4;

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/stages/AccountStage$4;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    invoke-virtual {v3, v7, v8, v9}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 218
    :cond_183
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 219
    invoke-virtual {v3, v6, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    move/from16 v23, v12

    move v12, v6

    goto/16 :goto_27a

    :cond_18e
    move v8, v6

    .line 221
    new-instance v6, Linfo/flowersoft/theotown/ui/TextField;

    move-object/from16 v16, v9

    const/16 v9, 0x64

    move/from16 v17, v10

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v10

    move/from16 v18, v7

    const/4 v7, 0x0

    move/from16 v19, v8

    const/4 v8, 0x0

    move/from16 v23, v12

    move-object/from16 v15, v16

    move/from16 v4, v17

    move/from16 v14, v18

    move/from16 v12, v19

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    .line 222
    invoke-virtual {v6, v12}, Linfo/flowersoft/theotown/ui/TextField;->setPassword(Z)V

    .line 223
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/TextField;->setAutoFill()V

    .line 224
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    .line 225
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 226
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 229
    new-instance v16, Lio/blueflower/stapel2d/gui/Label;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x5e

    .line 230
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v17

    .line 231
    invoke-virtual/range {v22 .. v22}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v20

    invoke-virtual/range {v22 .. v22}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v21

    const/16 v18, 0x0

    const/16 v19, 0x4

    invoke-direct/range {v16 .. v22}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v6, v16

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 232
    invoke-virtual {v6, v7, v8}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 233
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 234
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 236
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x379

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 237
    new-instance v6, Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    .line 238
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/ui/TextField;->setPassword(Z)V

    .line 239
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/TextField;->setAutoFill()V

    .line 240
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 241
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 243
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v6

    invoke-virtual {v3, v12, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 244
    invoke-virtual {v3, v1, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 245
    invoke-virtual {v3, v13, v14}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 247
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    new-instance v7, Linfo/flowersoft/theotown/stages/AccountStage$5;

    invoke-direct {v7, v0}, Linfo/flowersoft/theotown/stages/AccountStage$5;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    invoke-virtual {v3, v6, v15, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 267
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x297

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/stages/AccountStage$6;

    invoke-direct {v8, v0}, Linfo/flowersoft/theotown/stages/AccountStage$6;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    invoke-virtual {v3, v6, v7, v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object v6

    .line 273
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x95d

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/AccountStage$7;

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/stages/AccountStage$7;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v9, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGoldButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v7

    iput-object v7, v0, Linfo/flowersoft/theotown/stages/AccountStage;->cmdLogin:Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v8, 0x42

    .line 318
    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 319
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 320
    invoke-virtual {v3, v12, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 322
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AccountStage;->cmdLogin:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v4, v1

    .line 323
    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 324
    invoke-virtual {v6, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 325
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    .line 328
    :goto_27a
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v2

    if-nez v2, :cond_283

    .line 329
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/AccountStage;->addRegistrationProsAndCons(Linfo/flowersoft/theotown/util/LineLayoutFiller;)V

    .line 334
    :cond_283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2c4

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->getState()Linfo/flowersoft/theotown/crossplatform/SocialManager$State;

    move-result-object v4

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/SocialManager$State;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "steam"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c4

    .line 337
    new-instance v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x82c

    .line 338
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x1d3

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;-><init>(ILjava/lang/String;)V

    .line 337
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_2c4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_331

    .line 343
    new-instance v6, Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartX()I

    move-result v4

    add-int/lit8 v7, v4, -0x5

    add-int/lit8 v8, v5, 0x5

    .line 344
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineWidth()I

    move-result v4

    add-int/lit8 v9, v4, 0xa

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v4

    sub-int/2addr v4, v5

    add-int/lit8 v10, v4, -0x5

    invoke-direct/range {v6 .. v11}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->pushToBack()V

    .line 346
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v5

    .line 347
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xb62

    invoke-interface {v4, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v6, v7}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 348
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    move v6, v12

    .line 350
    :goto_303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_32e

    .line 351
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;

    .line 352
    iget v7, v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->icon:I

    iget-object v8, v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->name:Ljava/lang/String;

    iget-object v9, v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->action:Ljava/lang/Runnable;

    if-eqz v9, :cond_318

    goto :goto_31d

    :cond_318
    new-instance v9, Linfo/flowersoft/theotown/stages/AccountStage$8;

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/stages/AccountStage$8;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    :goto_31d
    invoke-virtual {v3, v7, v8, v9}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object v7

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->action:Ljava/lang/Runnable;

    if-eqz v4, :cond_327

    move v4, v1

    goto :goto_328

    :cond_327
    move v4, v12

    .line 356
    :goto_328
    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_303

    .line 358
    :cond_32e
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 361
    :cond_331
    new-instance v6, Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartX()I

    move-result v1

    add-int/lit8 v7, v1, -0x5

    add-int/lit8 v8, v5, 0x5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineWidth()I

    move-result v1

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getStartY()I

    move-result v1

    sub-int v10, v1, v5

    invoke-direct/range {v6 .. v11}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->pushToBack()V

    .line 363
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AccountStage;->name:Ljava/lang/String;

    if-eqz v1, :cond_358

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v2, :cond_358

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 364
    :cond_358
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AccountStage;->pw:Ljava/lang/String;

    if-eqz v1, :cond_363

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/AccountStage;->tfPassword:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v2, :cond_363

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    :cond_363
    const/4 v10, 0x0

    .line 365
    iput-object v10, v0, Linfo/flowersoft/theotown/stages/AccountStage;->name:Ljava/lang/String;

    .line 366
    iput-object v10, v0, Linfo/flowersoft/theotown/stages/AccountStage;->pw:Ljava/lang/String;

    .line 368
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 371
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v1

    iget-object v5, v1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_ACCOUNT_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    new-instance v6, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    new-instance v7, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    const/16 v1, 0x2e9

    const/16 v2, 0xbb5

    .line 368
    invoke-static/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 536
    const-string v0, "AccountStage"

    return-object v0
.end method

.method public final unlinkForumAccount()V
    .registers 4

    .line 507
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/backend/UserService;

    invoke-direct {v1}, Linfo/flowersoft/theotown/backend/UserService;-><init>()V

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$10;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/AccountStage$10;-><init>(Linfo/flowersoft/theotown/stages/AccountStage;)V

    .line 508
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/backend/UserService;->unlinkSteamAccount(Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass1 (info.flowersoft.theotown.stages.AccountStage$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$1;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$1;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass10 (info.flowersoft.theotown.stages.AccountStage$10)
.class public Linfo/flowersoft/theotown/stages/AccountStage$10;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/UserService$UnlinkSteamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->unlinkForumAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 508
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$10;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 5

    .line 518
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unlink Steam account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 511
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->logout()V

    .line 513
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$10;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass2 (info.flowersoft.theotown.stages.AccountStage$2)
.class public Linfo/flowersoft/theotown/stages/AccountStage$2;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;

.field public final synthetic val$user:Linfo/flowersoft/theotown/backend/User;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;Linfo/flowersoft/theotown/backend/User;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->val$user:Linfo/flowersoft/theotown/backend/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7

    .line 162
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 163
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v1, :cond_39

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->val$user:Linfo/flowersoft/theotown/backend/User;

    .line 164
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getSteamId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_39

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->val$user:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_39

    .line 166
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xbd3

    .line 167
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$2$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/AccountStage$2$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$2;)V

    .line 166
    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 193
    :cond_39
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x4b1

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$2$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/AccountStage$2$2;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$2;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 199
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.AccountStage$2$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$2$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$2;->handle(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 171
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x19

    .line 173
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8c8

    .line 174
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 176
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    .line 178
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 178
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 179
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xbd3

    .line 181
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/AccountStage$2$1$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/AccountStage$2$1$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$2$1;)V

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v0, v1, v3, v5, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 188
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 189
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass2.AnonymousClass1.RunnableC10811 (info.flowersoft.theotown.stages.AccountStage$2$1$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$2$1$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/stages/AccountStage$2$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$2$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/AccountStage$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/AccountStage$2$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AccountStage$2$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AccountStage;->access$000(Linfo/flowersoft/theotown/stages/AccountStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass2.RunnableC10822 (info.flowersoft.theotown.stages.AccountStage$2$2)
.class public Linfo/flowersoft/theotown/stages/AccountStage$2$2;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$2;->handle(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$2;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 196
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$2$2;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$2;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$2;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "forum delete url"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass3 (info.flowersoft.theotown.stages.AccountStage$3)
.class public Linfo/flowersoft/theotown/stages/AccountStage$3;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;

.field public final synthetic val$user:Linfo/flowersoft/theotown/backend/User;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;Linfo/flowersoft/theotown/backend/User;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$3;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$3;->val$user:Linfo/flowersoft/theotown/backend/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 206
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AccountStage$3;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/AccountStage;->access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "forum profile url"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AccountStage$3;->val$user:Linfo/flowersoft/theotown/backend/User;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass4 (info.flowersoft.theotown.stages.AccountStage$4)
.class public Linfo/flowersoft/theotown/stages/AccountStage$4;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$4;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 213
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->logout()V

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$4;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass5 (info.flowersoft.theotown.stages.AccountStage$5)
.class public Linfo/flowersoft/theotown/stages/AccountStage$5;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/LineLayoutFiller$ClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    .line 250
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_HELP:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x70d

    .line 251
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$5$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/AccountStage$5$2;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$5;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object p1

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x4b1

    .line 257
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/AccountStage$5$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/AccountStage$5$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$5;)V

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass5.AnonymousClass1 (info.flowersoft.theotown.stages.AccountStage$5$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$5$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$5;->handle(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$5;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 260
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$5;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "forum delete url"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass5.AnonymousClass2 (info.flowersoft.theotown.stages.AccountStage$5$2)
.class public Linfo/flowersoft/theotown/stages/AccountStage$5$2;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$5;->handle(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5$2;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 254
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$5$2;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$5;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$5;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "forum forgot url"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass6 (info.flowersoft.theotown.stages.AccountStage$6)
.class public Linfo/flowersoft/theotown/stages/AccountStage$6;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$6;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 270
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$6;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$100(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "forum register url"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass7 (info.flowersoft.theotown.stages.AccountStage$7)
.class public Linfo/flowersoft/theotown/stages/AccountStage$7;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AccountStage;->access$200(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/AccountStage;->access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Linfo/flowersoft/theotown/stages/AccountStage;->access$400(Linfo/flowersoft/theotown/stages/AccountStage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/backend/Backend;->onForumLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;->access$502(Linfo/flowersoft/theotown/stages/AccountStage;Z)Z

    .line 280
    invoke-static {}, Linfo/flowersoft/theotown/stages/AccountStage;->access$600()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v1

    const-string v2, "test"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "hint"

    const-string v3, "forum"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 281
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-static {}, Linfo/flowersoft/theotown/stages/AccountStage;->access$600()Linfo/flowersoft/theotown/backend/Service;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/AccountStage$7$1;

    invoke-direct {v4, p0, v0}, Linfo/flowersoft/theotown/stages/AccountStage$7$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$7;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass7.AnonymousClass1 (info.flowersoft.theotown.stages.AccountStage$7$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$7$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

.field public final synthetic val$user:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$QmcbZZ2XqoAGEj0RJQDzn7CU-aY(Linfo/flowersoft/theotown/stages/AccountStage$7$1;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_74

    .line 286
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x83a

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getForumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    .line 291
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 292
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Linfo/flowersoft/theotown/stages/AccountStage;->access$400(Linfo/flowersoft/theotown/stages/AccountStage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->onForumLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AccountStage;->access$702(Linfo/flowersoft/theotown/stages/AccountStage;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    :cond_68
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    goto :goto_9c

    .line 298
    :cond_74
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xb8f

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 300
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$300(Linfo/flowersoft/theotown/stages/AccountStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 304
    :cond_9c
    :goto_9c
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/AccountStage;->access$502(Linfo/flowersoft/theotown/stages/AccountStage;Z)Z

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$7;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->val$user:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 310
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getLogoutHint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x1ae

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extra"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_38
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AccountStage;->access$502(Linfo/flowersoft/theotown/stages/AccountStage;Z)Z

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 284
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AccountStage$7;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->val$user:Ljava/lang/String;

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$7$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage$7$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.AccountStage$7$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AccountStage$7$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$7$1;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AccountStage$7$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AccountStage$7$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$7$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AccountStage$7$1;->$r8$lambda$QmcbZZ2XqoAGEj0RJQDzn7CU-aY(Linfo/flowersoft/theotown/stages/AccountStage$7$1;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass8 (info.flowersoft.theotown.stages.AccountStage$8)
.class public Linfo/flowersoft/theotown/stages/AccountStage$8;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 352
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$8;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass9 (info.flowersoft.theotown.stages.AccountStage$9)
.class public Linfo/flowersoft/theotown/stages/AccountStage$9;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage;->leave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$9;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 480
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 470
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$9;->this$0:Linfo/flowersoft/theotown/stages/AccountStage;

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage$9$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/AccountStage$9$1;-><init>(Linfo/flowersoft/theotown/stages/AccountStage$9;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AnonymousClass9.AnonymousClass1 (info.flowersoft.theotown.stages.AccountStage$9$1)
.class public Linfo/flowersoft/theotown/stages/AccountStage$9$1;
.super Ljava/lang/Object;
.source "AccountStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AccountStage$9;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AccountStage$9;

.field public final synthetic val$answer:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage$9;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$9$1;->this$1:Linfo/flowersoft/theotown/stages/AccountStage$9;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$9$1;->val$answer:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 473
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$9$1;->val$answer:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage.AccountType (info.flowersoft.theotown.stages.AccountStage$AccountType)
.class public Linfo/flowersoft/theotown/stages/AccountStage$AccountType;
.super Ljava/lang/Object;
.source "AccountStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AccountStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountType"
.end annotation


# instance fields
.field public action:Ljava/lang/Runnable;

.field public icon:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->name:Ljava/lang/String;

    .line 548
    iput p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$AccountType;->icon:I

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AccountStage;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AccountStage;->$r8$lambda$FqTaKPQPRAI5txfqSh_XEpXWWmo(Linfo/flowersoft/theotown/stages/AccountStage;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AccountStage;->$r8$lambda$iXBrKSSF9ljt8hQX8iZD2CZWbZs(Linfo/flowersoft/theotown/stages/AccountStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AccountStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AccountStage;->$r8$lambda$wZQSamcmvfBFL4DhxvZLpD53UL8(Linfo/flowersoft/theotown/stages/AccountStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.AccountStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AccountStage;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AccountStage;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/AccountStage;

    iget v1, p0, Linfo/flowersoft/theotown/stages/AccountStage$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AccountStage;->$r8$lambda$xfQw6s5zxJ5KWzV8iSzhn_W6zzA(Linfo/flowersoft/theotown/stages/AccountStage;I)V

    return-void
.end method
