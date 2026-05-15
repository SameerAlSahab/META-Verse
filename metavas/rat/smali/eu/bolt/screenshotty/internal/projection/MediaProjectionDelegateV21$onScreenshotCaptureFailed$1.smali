.class final Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;
.super Ljava/lang/Object;
.source "MediaProjectionDelegateV21.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->onScreenshotCaptureFailed(Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $cause:Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

.field final synthetic this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;


# direct methods
.method constructor <init>(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/util/MakeScreenshotFailedException;)V
    .locals 0

    iput-object p1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    iput-object p2, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->$cause:Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-static {v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$getPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->$cause:Leu/bolt/screenshotty/util/MakeScreenshotFailedException;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    const/4 v1, 0x0

    check-cast v1, Leu/bolt/screenshotty/internal/ScreenshotResultImpl;

    invoke-static {v0, v1}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$setPendingResult$p(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;Leu/bolt/screenshotty/internal/ScreenshotResultImpl;)V

    iget-object v0, p0, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21$onScreenshotCaptureFailed$1;->this$0:Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;

    invoke-static {v0}, Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;->access$stopCaptureThread(Leu/bolt/screenshotty/internal/projection/MediaProjectionDelegateV21;)V

    return-void
.end method
