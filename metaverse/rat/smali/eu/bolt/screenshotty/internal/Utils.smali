.class public final Leu/bolt/screenshotty/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\neu/bolt/screenshotty/internal/Utils\n*L\n1#1,71:1\n52#1,5:72\n52#1,5:77\n52#1,5:82\n52#1,5:87\n52#1,5:92\n*E\n*S KotlinDebug\n*F\n+ 1 Utils.kt\neu/bolt/screenshotty/internal/Utils\n*L\n27#1,5:72\n32#1,5:77\n37#1,5:82\n42#1,5:87\n47#1,5:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0017\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010H\u0082\u0008J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0006H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0012\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J\u0012\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Leu/bolt/screenshotty/internal/Utils;",
        "",
        "()V",
        "LOG_ENABLED",
        "",
        "LOG_TAG",
        "",
        "checkOnMainThread",
        "",
        "closeSafely",
        "image",
        "Landroid/media/Image;",
        "reader",
        "Landroid/media/ImageReader;",
        "doSafely",
        "action",
        "Lkotlin/Function0;",
        "interruptSafely",
        "thread",
        "Landroid/os/HandlerThread;",
        "logE",
        "message",
        "throwable",
        "",
        "releaseSafely",
        "display",
        "Landroid/hardware/display/VirtualDisplay;",
        "stopSafely",
        "projection",
        "Landroid/media/projection/MediaProjection;",
        "screenshotty-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Leu/bolt/screenshotty/internal/Utils;

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "screenshot"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leu/bolt/screenshotty/internal/Utils;

    invoke-direct {v0}, Leu/bolt/screenshotty/internal/Utils;-><init>()V

    sput-object v0, Leu/bolt/screenshotty/internal/Utils;->INSTANCE:Leu/bolt/screenshotty/internal/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final doSafely(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p0, v2}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final checkOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The method can be called only on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final closeSafely(Landroid/media/Image;)V
    .locals 4

    move-object v0, p0

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    nop

    return-void
.end method

.method public final closeSafely(Landroid/media/ImageReader;)V
    .locals 4

    move-object v0, p0

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    nop

    return-void
.end method

.method public final interruptSafely(Landroid/os/HandlerThread;)V
    .locals 4

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-virtual {p1}, Landroid/os/HandlerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    :goto_0
    nop

    return-void
.end method

.method public final logE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    return-void
.end method

.method public final logE(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    return-void
.end method

.method public final releaseSafely(Landroid/hardware/display/VirtualDisplay;)V
    .locals 4

    move-object v0, p0

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    nop

    return-void
.end method

.method public final stopSafely(Landroid/media/projection/MediaProjection;)V
    .locals 4

    move-object v0, p0

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Leu/bolt/screenshotty/internal/Utils;->logE(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    nop

    return-void
.end method
