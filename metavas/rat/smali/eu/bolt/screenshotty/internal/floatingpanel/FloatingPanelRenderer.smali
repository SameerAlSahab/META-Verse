.class public final Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;
.super Ljava/lang/Object;
.source "FloatingPanelRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingPanelRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingPanelRenderer.kt\neu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,52:1\n1084#2,2:53\n*E\n*S KotlinDebug\n*F\n+ 1 FloatingPanelRenderer.kt\neu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer\n*L\n25#1,2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;",
        "",
        "windowDataProvider",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;",
        "(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;)V",
        "drawPanel",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "info",
        "Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;",
        "tryRenderDialogs",
        "Landroid/graphics/Bitmap;",
        "activity",
        "Landroid/app/Activity;",
        "original",
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
.field private final windowDataProvider:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;


# direct methods
.method public constructor <init>(Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;)V
    .locals 1

    const-string v0, "windowDataProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->windowDataProvider:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;

    return-void
.end method

.method private final drawPanel(Landroid/graphics/Canvas;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;)V
    .locals 3

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->getWindowFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final tryRenderDialogs(Landroid/app/Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "original"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->windowDataProvider:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;

    invoke-virtual {v0, p1}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelDataProvider;->getFloatingPanels(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    nop

    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    nop

    nop

    nop

    nop

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    sget-object v3, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;->INSTANCE:Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer$tryRenderDialogs$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;

    const/4 v7, 0x0

    invoke-direct {p0, v1, v6}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->drawPanel(Landroid/graphics/Canvas;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;)V

    goto :goto_0

    :cond_1
    nop

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;

    const/4 v5, 0x0

    invoke-virtual {v4}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->isDialog()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;

    move-object v2, v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v4, 0xff

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0, v1, v2}, Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelRenderer;->drawPanel(Landroid/graphics/Canvas;Leu/bolt/screenshotty/internal/floatingpanel/FloatingPanelData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    nop

    :goto_2
    return-object p2
.end method
