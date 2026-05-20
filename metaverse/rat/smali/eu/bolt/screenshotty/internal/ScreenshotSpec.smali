.class public final Leu/bolt/screenshotty/internal/ScreenshotSpec;
.super Ljava/lang/Object;
.source "ScreenshotSpec.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenshotSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenshotSpec.kt\neu/bolt/screenshotty/internal/ScreenshotSpec\n*L\n1#1,19:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/ScreenshotSpec;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "densityDpi",
        "",
        "getDensityDpi",
        "()I",
        "height",
        "getHeight",
        "width",
        "getWidth",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final densityDpi:I

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const-string v1, "activity.windowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->width:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->height:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "activity.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->densityDpi:I

    return-void
.end method


# virtual methods
.method public final getDensityDpi()I
    .locals 1

    iget v0, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->densityDpi:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Leu/bolt/screenshotty/internal/ScreenshotSpec;->width:I

    return v0
.end method
