###### Class kotlinx.serialization.json.internal.CharMappings (kotlinx.serialization.json.internal.CharMappings)
.class public final Lkotlinx/serialization/json/internal/CharMappings;
.super Ljava/lang/Object;
.source "AbstractJsonLexer.kt"


# static fields
.field public static final CHAR_TO_TOKEN:[B

.field public static final ESCAPE_2_CHAR:[C

.field public static final INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/serialization/json/internal/CharMappings;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharMappings;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;

    const/16 v1, 0x75

    .line 62
    new-array v1, v1, [C

    sput-object v1, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    const/16 v1, 0x7e

    .line 65
    new-array v1, v1, [B

    sput-object v1, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    .line 68
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharMappings;->initEscape()V

    .line 69
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharMappings;->initCharToToken()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initC2ESC(CC)V
    .registers 3

    .line 110
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    return-void
.end method

.method public final initC2ESC(IC)V
    .registers 4

    const/16 v0, 0x75

    if-eq p2, v0, :cond_9

    .line 107
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    int-to-char p1, p1

    aput-char p1, v0, p2

    :cond_9
    return-void
.end method

.method public final initC2TC(CB)V
    .registers 3

    .line 116
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    return-void
.end method

.method public final initC2TC(IB)V
    .registers 4

    .line 113
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public final initCharToToken()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x21

    if-ge v0, v1, :cond_d

    const/16 v1, 0x7f

    .line 89
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/16 v0, 0x9

    const/4 v1, 0x3

    .line 92
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v2, 0xa

    .line 93
    invoke-virtual {p0, v2, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v2, 0xd

    .line 94
    invoke-virtual {p0, v2, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v2, 0x20

    .line 95
    invoke-virtual {p0, v2, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(IB)V

    const/16 v1, 0x2c

    const/4 v2, 0x4

    .line 96
    invoke-virtual {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v1, 0x3a

    const/4 v2, 0x5

    .line 97
    invoke-virtual {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v1, 0x7b

    const/4 v2, 0x6

    .line 98
    invoke-virtual {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v1, 0x7d

    const/4 v2, 0x7

    .line 99
    invoke-virtual {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v1, 0x5b

    const/16 v2, 0x8

    .line 100
    invoke-virtual {p0, v1, v2}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v1, 0x5d

    .line 101
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x22

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    const/16 v0, 0x5c

    const/4 v1, 0x2

    .line 103
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2TC(CB)V

    return-void
.end method

.method public final initEscape()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_d

    const/16 v1, 0x75

    .line 74
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/16 v0, 0x8

    const/16 v1, 0x62

    .line 77
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0x9

    const/16 v1, 0x74

    .line 78
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xa

    const/16 v1, 0x6e

    .line 79
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xc

    const/16 v1, 0x66

    .line 80
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0xd

    const/16 v1, 0x72

    .line 81
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v0, 0x2f

    .line 82
    invoke-virtual {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    const/16 v0, 0x22

    .line 83
    invoke-virtual {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    const/16 v0, 0x5c

    .line 84
    invoke-virtual {p0, v0, v0}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(CC)V

    return-void
.end method
