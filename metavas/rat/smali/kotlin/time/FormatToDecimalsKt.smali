.class public final Lkotlin/time/FormatToDecimalsKt;
.super Ljava/lang/Object;
.source "formatToDecimals.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nformatToDecimals.kt\nKotlin\n*S Kotlin\n*F\n+ 1 formatToDecimals.kt\nkotlin/time/FormatToDecimalsKt\n*L\n1#1,42:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u001a\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0000\"\u001c\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "precisionFormats",
        "",
        "Ljava/lang/ThreadLocal;",
        "Ljava/text/DecimalFormat;",
        "[Ljava/lang/ThreadLocal;",
        "rootNegativeExpFormatSymbols",
        "Ljava/text/DecimalFormatSymbols;",
        "rootPositiveExpFormatSymbols",
        "scientificFormat",
        "createFormatForDecimals",
        "decimals",
        "",
        "formatScientific",
        "",
        "value",
        "",
        "formatToExactDecimals",
        "formatUpToDecimals",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final precisionFormats:[Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

.field private static final rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

.field private static final scientificFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    sput-object v0, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "e+"

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    sput-object v0, Lkotlin/time/FormatToDecimalsKt;->rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    move v3, v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lkotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkotlin/time/FormatToDecimalsKt;->scientificFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static final createFormatForDecimals(I)Ljava/text/DecimalFormat;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    const-string v2, "0"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    move-object v1, v0

    const/4 v2, 0x0

    if-lez p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    :cond_0
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    nop

    nop

    return-object v0
.end method

.method public static final formatScientific(D)Ljava/lang/String;
    .locals 6

    nop

    nop

    nop

    nop

    sget-object v0, Lkotlin/time/FormatToDecimalsKt;->scientificFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/text/DecimalFormat;

    sget-object v3, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    const-string v4, "0E0"

    invoke-direct {v2, v4, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    move-object v0, v1

    check-cast v0, Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    int-to-double v3, v3

    cmpl-double v5, p0, v3

    if-gez v5, :cond_2

    const/4 v3, -0x1

    int-to-double v3, v3

    cmpg-double v5, p0, v3

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lkotlin/time/FormatToDecimalsKt;->rootNegativeExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Lkotlin/time/FormatToDecimalsKt;->rootPositiveExpFormatSymbols:Ljava/text/DecimalFormatSymbols;

    :goto_2
    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    nop

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scientificFormat.getOrSe\u2026 }\n        .format(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final formatToExactDecimals(DI)Ljava/lang/String;
    .locals 3

    sget-object v0, Lkotlin/time/FormatToDecimalsKt;->precisionFormats:[Ljava/lang/ThreadLocal;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Ljava/text/DecimalFormat;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v1

    :goto_1
    move-object v0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.format(value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final formatUpToDecimals(DI)Ljava/lang/String;
    .locals 3

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/time/FormatToDecimalsKt;->createFormatForDecimals(I)Ljava/text/DecimalFormat;

    move-result-object v0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "createFormatForDecimals(\u2026 }\n        .format(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
