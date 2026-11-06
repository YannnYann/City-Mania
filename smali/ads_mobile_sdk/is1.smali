###### Class ads_mobile_sdk.is1 (ads_mobile_sdk.is1)
.class public final Lads_mobile_sdk/is1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private bitField0_:I

.field private hmacKey_:Lads_mobile_sdk/du;

.field private hmacSignatureLength_:I

.field private memoizedIsInitialized:B

.field private symmetricKey_:Lads_mobile_sdk/du;

.field private type_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lads_mobile_sdk/is1;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/is1;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lads_mobile_sdk/is1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/is1;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtype_(Lads_mobile_sdk/is1;I)V
    .registers 2

    .line 0
    iput p1, p0, Lads_mobile_sdk/is1;->type_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/is1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/is1;->DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/is1;

    invoke-direct {v0}, Lads_mobile_sdk/is1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/is1;->DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

    .line 5
    const-class v1, Lads_mobile_sdk/is1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7659
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x2

    .line 8334
    iput-byte v0, p0, Lads_mobile_sdk/is1;->memoizedIsInitialized:B

    .line 8335
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object v0, p0, Lads_mobile_sdk/is1;->symmetricKey_:Lads_mobile_sdk/du;

    .line 8336
    iput-object v0, p0, Lads_mobile_sdk/is1;->hmacKey_:Lads_mobile_sdk/du;

    return-void
.end method

.method public static v()Lads_mobile_sdk/hs1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/is1;->DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->h()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/hs1;

    return-object v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 7863
    sget-object p3, Lads_mobile_sdk/es1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_4c

    return-object p3

    :pswitch_d
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    int-to-byte p1, p1

    .line 7894
    iput-byte p1, p0, Lads_mobile_sdk/is1;->memoizedIsInitialized:B

    return-object p3

    .line 7895
    :pswitch_16
    iget-byte p1, p0, Lads_mobile_sdk/is1;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7896
    :pswitch_1d
    const-class p1, Lads_mobile_sdk/is1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 7897
    :pswitch_24
    sget-object p1, Lads_mobile_sdk/is1;->DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

    return-object p1

    .line 7898
    :pswitch_27
    sget-object v2, Lads_mobile_sdk/fs1;->a:Lads_mobile_sdk/fs1;

    const-string v4, "hmacKey_"

    const-string v5, "hmacSignatureLength_"

    const-string v0, "bitField0_"

    const-string v1, "type_"

    const-string v3, "symmetricKey_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 7906
    sget-object p2, Lads_mobile_sdk/is1;->DEFAULT_INSTANCE:Lads_mobile_sdk/is1;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0003\u0001\u1d0c\u0000\u0002\u150a\u0001\u0003\u150a\u0002\u0004\u1004\u0003"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7907
    :pswitch_40
    new-instance p1, Lads_mobile_sdk/hs1;

    invoke-direct {p1}, Lads_mobile_sdk/hs1;-><init>()V

    return-object p1

    .line 7908
    :pswitch_46
    new-instance p1, Lads_mobile_sdk/is1;

    invoke-direct {p1}, Lads_mobile_sdk/is1;-><init>()V

    return-object p1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_40
        :pswitch_27
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/du;)V
    .registers 3

    .line 7860
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7861
    iget v0, p0, Lads_mobile_sdk/is1;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lads_mobile_sdk/is1;->bitField0_:I

    .line 7862
    iput-object p1, p0, Lads_mobile_sdk/is1;->hmacKey_:Lads_mobile_sdk/du;

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3

    .line 7785
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7786
    iget v0, p0, Lads_mobile_sdk/is1;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lads_mobile_sdk/is1;->bitField0_:I

    .line 7787
    iput-object p1, p0, Lads_mobile_sdk/is1;->symmetricKey_:Lads_mobile_sdk/du;

    return-void
.end method
