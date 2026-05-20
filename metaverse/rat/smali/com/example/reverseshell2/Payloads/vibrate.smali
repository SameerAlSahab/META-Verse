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
    .locals 6 # রেজিস্টার সংখ্যা বাড়ানো হয়েছে jate new objects handle kora jay

    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/vibrate;->context:Landroid/content/Context;
    const-string v1, "vibrator"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    # SDK Version Check (Build.VERSION.SDK_INT)
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 0x1a # 0x1a = API 26 (Android 8.0)

    if-lt v2, v3, :cond_1

    # --- Modern Way (API 26+) ---
    const-wide/16 v2, 0x1f4 # 500ms
    const/4 v4, -0x1      # DEFAULT_AMPLITUDE
    invoke-static {v2, v3, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    goto :goto_1

    :cond_1
    # --- Legacy Way (Below API 26) ---
    const-wide/16 v2, 0x1f4 # 500ms
    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_1
    const-wide/16 v2, 0x320 # Sleep 800ms
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_2

    :catch_0
    move-exception v2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1
    goto :goto_0

    :cond_2
    return-void
.end method
