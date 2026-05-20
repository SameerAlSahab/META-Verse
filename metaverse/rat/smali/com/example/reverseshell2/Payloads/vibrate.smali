.class public Lcom/example/reverseshell2/Payloads/vibrate;
.super Ljava/lang/Object;
.source "vibrate.java"

# instance fields
.field context:Landroid/content/Context;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/vibrate;->context:Landroid/content/Context;

    return-void
.end method

# virtual methods
.method public vib(I)V
    .locals 8

    const-string v7, "vibrator"
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/vibrate;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_has_vibrator
    return-void

    :cond_has_vibrator
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z
    move-result v7
    if-nez v7, :cond_start
    return-void

    :cond_start
    const/4 v1, 0x0

    :goto_vib_loop
    if-ge v1, p1, :cond_done

        const-wide/16 v4, 0x1f4
        const/16 v6, 0xff

        invoke-static {v4, v5, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;
        move-result-object v2

        new-instance v3, Landroid/os/VibrationAttributes$Builder;
        invoke-direct {v3}, Landroid/os/VibrationAttributes$Builder;-><init>()V

        const/16 v7, 0x21
        invoke-virtual {v3, v7}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;
        move-result-object v3

        invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;
        move-result-object v3

        invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

        const-wide/16 v4, 0x320
        :try_start_0
        invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
        :try_end_0
        .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
        :catch_0

        add-int/lit8 v1, v1, 0x1
        goto :goto_vib_loop

    :cond_done
    return-void
.end method
